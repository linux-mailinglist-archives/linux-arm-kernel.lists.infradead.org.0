Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BADFE1388
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 10:01:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wPnWSgSvRVwxInGufnlHqO21c4eFRZANh8lIdHLE238=; b=MgPeYPJ+fD7VFp
	GUaz8t14HcSSESH4fuTJGzeTf9Sh/DM87rvyCL3UdrC3rUvl8hDw442ykFwwZn31IRshkjM2xw01t
	YzGFR99QgQwtz5fK8xNteuIMKyDnFdvVuMPt305hkWf6vGyQorWZvEPTULo7JSdXJNEiJEWWxCsgz
	V165IPin/SkK4OF4n2w7INTLgh5mixfeNO8QKzj+l/Kr4H5YGkHZeR4802tH3/zIXytGgJ6ra4Uxc
	MtUflQ1hs1JC7bb1pNTkhziZkenmsiHsyrSPKIn8F4aWZkl2Tfmnf1xJN3XOXD4bC1NXagtvrBbI6
	yXkZECdvwondKhH1zcjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNBZc-0003fc-Qp; Wed, 23 Oct 2019 08:00:52 +0000
Received: from mout.web.de ([212.227.17.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNBZS-0003f0-VM
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 08:00:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1571817626;
 bh=zXQECy0cqr175PWY8oJwBGRomnEC4rcuFjHy6KY29NI=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=hR23qBeeFDwbHSjrYuUd6lU22i09oI4et1b9z/wRXUaq76Vh4yBF0UQWiKZkXWe6M
 88r9NkZnHjWIYYHk+UyNldFAjGEBbyoqSoXjlHWTNCU4VI9oq2qLCwnmgyBcoX3M//
 g8FTjAoiq5cblwX9Ylyn0bEYul6GRI9O1jDIqRBI=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.2] ([93.135.140.249]) by smtp.web.de (mrweb101
 [213.165.67.124]) with ESMTPSA (Nemesis) id 0MSJKJ-1iZ6kk36ct-00TUvy; Wed, 23
 Oct 2019 10:00:25 +0200
Subject: Re: [PATCH v2] clocksource/drivers: Fix memory leak in
 ttc_setup_clockevent
To: Navid Emamdoost <navid.emamdoost@gmail.com>,
 Michal Simek <michal.simek@xilinx.com>, linux-arm-kernel@lists.infradead.org
References: <2a6cdb63-397b-280a-7379-740e8f43ddf6@xilinx.com>
 <20191023043139.31183-1-navid.emamdoost@gmail.com>
From: Markus Elfring <Markus.Elfring@web.de>
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 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 FEE=
Message-ID: <3785f6cf-e8ea-9cd8-80b3-e88b2c4d085f@web.de>
Date: Wed, 23 Oct 2019 10:00:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <20191023043139.31183-1-navid.emamdoost@gmail.com>
Content-Language: en-US
X-Provags-ID: V03:K1:ZwerJEF5fdwavfNHN7miW3T66Gyo/LoKvX/R+eV0vTMGSbt94nI
 9d8fFadakbGcAV02nuJLvo5tUt1Vw1gIpodcLPaUGV4F/EZnTerEjFBzMPWm5kWwUPeII1R
 SgErAIePGhu8uqSP/j61I/y9sPqvHQU9cSHY3o1pWtPiB6MosXw7hu7cgTZ6LqMwBCSlQv4
 yg9Z0gezFhaQ+1Ew/RKEw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:/aHY+2Rxzm8=:JWBqbgiD/urYdDE5XI3aGT
 FOostkgS7BmjqbtGTAbskQyweSLyKYVqu2PSbaSOG4D8jf5O1Z2lmzyFFNB/WUGzskAdNA3c7
 pUXlj3jeb8GOYKbadQktWrT6BPardOhAcapyxwhdoA2aBGFHe5UQ0zMajHrpcXC2Du1fxmabq
 FHoAFSonSZe3Lw0JKttFItffrw1b6nAk/qcZky6CdZmehMCucMZ3aK1K4FtboC+N5nVFXauWC
 MrWw3blW4pKgT7wSo2xNG1HAqKxlBAlVBbq3ctvMo01+RZ2qqBqrNkPaKvBJCU9IrwxprVnKa
 toLSJQFP3deibMt1l7ckLchVQL1KY1KdYvep0pTOAJhj9/3SLQBX31ohLa4xGfsBv0KD520UP
 z4fcrU6757g0VFucDr2X8maHS7ffZHlCgKT6cexQD7xFrAVRN+rT1K+Cc2IM5008RWejVlGb5
 /sDp7qyPOye9Grk5r8ezLyNxwYPLNlhj/nfu1VYiX8vqFACzMMjwM1vr4kHjHd2i8tvdl4rWA
 f1s0CdjlPRMX4ng2GcqWCj1SRui86U9/UPE4FxFRaEURM0z7IBox++4B3U7nSkezCgHPwDCTl
 Chw1KCmDaGl/+vA8uEfSQH9LqyhHteC2Fgd2PABFNWLO+bQLbS2LiiyXTpE5cx816ztRkipXw
 BnGcxsIc9ChcvN8Xl0HXemLQW/5yLcrhXQx3MoFYyVndeGVe1rPzm7g7HzkLINQB34A5QG1M1
 G6YOXeSnxapa9AY34cVe+Xzei9btQsMJ7PfbwYeANSwjfB2lAFWbU+OMfEIMq3ZBUZE4NvVGo
 /ixiVbkxcjhObta6c+Pl9Oc4b05vEVidMkWWbBqx3mj/oONchea9AUbCKZau446fLY1IJoWeS
 HILtMJ/ycs8pJ68A6AzU1VAK2crqMbWQaZWpy2V5SFMThWOF+WmKSkIeSRbdeRzHkSdz7EeTX
 IfVYud3omC9Yb23qCa5vAt4EbzGGoBgzWb+XaceEW3MDiDLZxOSdgmDfpjUth2AchZOm9bKZr
 5oQGEsY4tr4vnfdDLZSeM1Pn1+MWbH4fI2J7bMNs9nM8GoHa+dKl8Na8R6UED/ZYrilGAyTfG
 qcwctgwqK2A+bX6fwOTQ92echEHVpLZ7DEdPSvKUbds1yRZeAW6Aa0g2Iho63zWqudDd57cU3
 OQxI6SOk2/+/wroWf8QOjvJ4+ea6+YDnbHHmuKlG/r5FUIz2wCeGpwF50PjS3dZ3RReeDA2G1
 6hE+q7GPzOaYdcTptIA4h7xww9Pf29Q8UF6x7FrV6OceE3elNOCPXeUDRLCg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_010043_306169_3A390CB9 
X-CRM114-Status: UNSURE (   9.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.12 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (markus.elfring[at]web.de)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: kernel-janitors@vger.kernel.org, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Kangjie Lu <kjlu@umn.edu>, linux-kernel@vger.kernel.org,
 Navid Emamdoost <emamd001@umn.edu>, Stephen McCamant <smccaman@umn.edu>,
 Thomas Gleixner <tglx@linutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

PiBJbiB0aGUgaW1wbGVtZW50YXRpb24gb2YgdHRjX3NldHVwX2Nsb2NrZXZlbnQoKSByZWxlYXNl
IHRoZSBhbGxvY2F0ZWQKPiBtZW1vcnkgZm9yIHR0Y2NlIGlmIGNsa19ub3RpZmllcl9yZWdpc3Rl
cigpIGZhaWxzLgoKSSBnb3Qgb3RoZXIgd29yZGluZyBwcmVmZXJlbmNlcy4gVGh1cyBJIGltYWdp
bmUgdGhhdCBzdWNoIGEgY2hhbmdlCmRlc2NyaXB0aW9uIGNhbiBzdGlsbCBiZSBpbXByb3ZlZCBh
bm90aGVyIGJpdC4KV291bGQgeW91IGxpa2UgdG8gZXhwcmVzcyB0aGUgYWRkaXRpb24gb2YgYSBq
dW1wIHRhcmdldCAoYWNjb3JkaW5nIHRvCnRoZSBMaW51eCBjb2Rpbmcgc3R5bGUpIGZvciB0aGUg
Y29tcGxldGlvbiBvZiBkZXNpcmVkIGV4Y2VwdGlvbiBoYW5kbGluZwppbiBhIGRpZmZlcmVudCB3
YXk/CgoK4oCmCj4gKysrIGIvZHJpdmVycy9jbG9ja3NvdXJjZS90aW1lci1jYWRlbmNlLXR0Yy5j
CuKApgo+IEBAIC00NTMsMTUgKzQ1MSwxOCBAQCBzdGF0aWMgaW50IF9faW5pdCB0dGNfc2V0dXBf
Y2xvY2tldmVudChzdHJ1Y3QgY2xrICpjbGssCuKApgo+ICtyZWxlYXNlX3R0Y2NlOgo+ICsKPiAr
CWtmcmVlKHR0Y2NlKTsK4oCmCgpJIHdvdWxkIHByZWZlciB0aGF0IGEgYmxhbmsgbGluZSB3aWxs
IG5vdCBiZSBhZGRlZCBkaXJlY3RseSBhZnRlciBzdWNoIGEgbGFiZWwuCgpSZWdhcmRzLApNYXJr
dXMKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
