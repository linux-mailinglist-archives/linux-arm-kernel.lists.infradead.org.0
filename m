Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D67301776B0
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 14:11:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L54PZKnsFPSli8TlQQzB1LoXM70f6JlI8ajmrbSfIPQ=; b=QBTdRYJF/1tIdP
	mbMaRHBdooZDg7BRZAXpwzCmlj5PwX9P4L0581PxcE9Th1fZmwJsQyYj/NUMqAt1Ta1nVbMVOuyEN
	IyNaixawsuyWdw8/xPdU/zskvjTpOyZQbqPTXCc+jkMjLevUMbjFuAbWK0ECFeyga8DPVa8u/6bKM
	70tx4Jh1Dx8TVM2pcZQnOXm+gXvKa2aORsBuIq9X/JJWNCGLige+c4yvM/rU5uagTXusvtiXHgTqS
	lcAVpHF/G/G7TtSUwBEwtBvI/eYVvLu2qVPvWHEmP5FP468LbsHQLOIEA/aLRIlIlUnhyVcXTHcIm
	y6K5GdpHXBZRrLjRpwgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j97K5-0001pb-BB; Tue, 03 Mar 2020 13:10:57 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j97Jw-0001pA-5r
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 13:10:49 +0000
Received: by mail-lj1-x242.google.com with SMTP id h18so3392094ljl.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Mar 2020 05:10:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=zbDdwq+X0+SJe1Y9uOGBu0Is3puyU2cocxmobEd5on8=;
 b=p3F/VMm4WwZdHK9m6fgI249WJFx6qab3QDN1Ba/TK5kWdTGKTvIFRq+0fhLlu+ps1b
 SA+c005ORh8opyLIeAfiEGAlXcrtE/BVrAU+kCpDxaXkWPqW8Xh65zf+Q7pyz0Uu0AMN
 GYLxQC5YZYD/rfUo+NsTCLzavxIEmGIlqvED2idIy8IUC9qvQaCThFurmt7FzZK43m6K
 NmKyihooNy70v+j8IZyfPG6SRaBhOQMnxgtaUVQ2HWvuilyDA3QgDYbz2/+QMTW27+QO
 mKrvd8Qth6Nxa31uV16PHf/G7SJMhsJzAvqaMwl1SGzwdYBC13XUF4cUQ8XCy6wte8Js
 Q+Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=zbDdwq+X0+SJe1Y9uOGBu0Is3puyU2cocxmobEd5on8=;
 b=nvUXkVuDaiI920LI3yZUOOOaI/nnDO89n6qm3FNa4xyL5guCkPTPxym7AgX1GIm6QH
 lw3Y+mmSgFYx1zQz2mDoyV4tx5FOLYh7I3FzqLq9iJ/N/YkSaAJ9+tAKHokYaOJY4Z7j
 Wm09cFzIpnjaUEWd/HxcD9lZoOxOY6w95x/VsYPojCkc2Zjk/3IyWyGnsSHDLnrEVvnh
 iPvvheQBZ+Z2QUsuIWgMfVE6clAd2IBSDyuOF0isGdCk/ek/cmn657OfS4724PIzV4AF
 myiUQgxmeaMTCjg9lej9f81t+cujsN5zxkVtuJFMBV0sHDAiTf18Ck5JJZ+De5FZCnNz
 cfBw==
X-Gm-Message-State: ANhLgQ3iNKFUK9opAUGaDjcFUWvRdKXoH+35Dzk67/srIChSF1xWWWG4
 Jn1YLo0p86Hr/NcWBS7q0EJqNfuGCR+0w3N+Km3A1Zegbsg=
X-Google-Smtp-Source: ADFU+vsYznw3DKPvszvhS0EutabypbtboXUhnLRfK6AwsYTO3TrkQ2W5j6zqMQylNo9y/D2hhfBScEoiC+aCjFRt/bI=
X-Received: by 2002:a05:651c:44b:: with SMTP id
 g11mr2348622ljg.168.1583241046338; 
 Tue, 03 Mar 2020 05:10:46 -0800 (PST)
MIME-Version: 1.0
References: <CAMiSF3BULWkyWTytTBcFfch9YaV_QzuBiawk-ZqEcQnsuGdUiQ@mail.gmail.com>
 <20200302083959.wju5vz3acuka2edq@pengutronix.de>
 <20200302093607.GG25745@shell.armlinux.org.uk>
 <CACRpkdbADQ5+Tp9NDgQx20Y0QTcE_go2qzi7dJL9HLu8PU1Smg@mail.gmail.com>
 <20200302213002.ajeujnuox6ioi2ua@pengutronix.de>
In-Reply-To: <20200302213002.ajeujnuox6ioi2ua@pengutronix.de>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 3 Mar 2020 14:10:35 +0100
Message-ID: <CACRpkdYdwsLPEGnVLpYZsf70BLvxhOAbNbSD7LDCTp-FDYPCGA@mail.gmail.com>
Subject: Re: GPIOs not correctly exported via sysfs on ATSAMA5D2
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_051048_230981_6B9B94F9 
X-CRM114-Status: GOOD (  17.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Linux GPIO List <linux-gpio@vger.kernel.org>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Romain Izard <romain.izard.pro@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBNYXIgMiwgMjAyMCBhdCAxMDozMCBQTSBVd2UgS2xlaW5lLUvDtm5pZwo8dS5rbGVp
bmUta29lbmlnQHBlbmd1dHJvbml4LmRlPiB3cm90ZToKPiBPbiBNb24sIE1hciAwMiwgMjAyMCBh
dCAwNTozNDoxOVBNICswMTAwLCBMaW51cyBXYWxsZWlqIHdyb3RlOgoKPiA+IFRoYXQncyBlc3Bl
Y2lhbGx5IGFubm95aW5nLiBJIHdvdWxkIGNvbnNpZGVyIGFkZGluZyBhIHNwZWNpZmljCj4gPiBj
b25zdW1lciBmbGFnIGZvciBHUElPcyB1c2VkIHRoaXMgd2F5LCBpbiBhZGRpdG9uIHRvCj4gPiBH
UElPRF9BU0lTLCBzb21ldGhpbmcgbGlrZSBHUElPRF9BU0lTX05PTVVYCj4gPiAodGhpbmtpbmcg
b2YgYmV0dGVyIG5hbWVzKS4KPgo+IFRoaXMgaXMgbm90IG9ubHkgcmVsZXZhbnQgZm9yIEdQSU9E
X0FTSVMuIEdQSU9zIGZvciByZWNvdmVyeSBhcmUKPiByZWdpc3RlcmVkIChpbiB0aGUgY2FzZSBv
ZiBpMmMtaW14KSB3aXRoOgo+Cj4gICAgICAgICByaW5mby0+c2RhX2dwaW9kID0gZGV2bV9ncGlv
ZF9nZXQoJnBkZXYtPmRldiwgInNkYSIsIEdQSU9EX0lOKTsKPiAgICAgICAgIHJpbmZvLT5zY2xf
Z3Bpb2QgPSBkZXZtX2dwaW9kX2dldCgmcGRldi0+ZGV2LCAic2NsIiwgR1BJT0RfT1VUX0hJR0hf
T1BFTl9EUkFJTik7Cj4KPiBzbyB3ZSdkIG5lZWQgYSBfTk9NVVggdmFyaWFudCBmb3IgZWFjaCBn
cGlvZF9mbGFncyB2YWx1ZS4KCk9oIHdlIGRvbid0IG5lZWQgYSBzcGVjaWFsIHZhcmlhbnQgZm9y
IGV2ZXJ5dGhpbmcuIEluIHRoZSBlbmQKaXQgaXMganVzdCBhIGJpdGZpZWxkLCBzb3JyeSBpZiBJ
IHdhcyB1bmNsZWFyLiA6KAoKI2RlZmluZSBHUElPRF9GTEFHU19CSVRfTk9NVVggICAgQklUKDUp
CgpyaW5mby0+c2RhX2dwaW9kID0gZGV2bV9ncGlvZF9nZXQoJnBkZXYtPmRldiwgInNkYSIsIEdQ
SU9EX0lOIHwKR1BJT0RfRkxBR1NfQklUX05PTVVYKTsKCm9yCkdQSU9EX09VVF9ISUdIX09QRU5f
RFJBSU4gfCBHUElPRF9GTEFHU19CSVRfTk9NVVgKaXMgZmluZS4KCkl0IGlzIGp1c3QgY29udmVu
aWVudCBoZWxwZXJzIGFmdGVyIGFsbC4KCj4gQWxzbyBpZiBhIGJvYXJkIG1ha2VzIHVzZSBvZiBp
MmMsIHRoZSBjb3JyZXNwb25kaW5nIHBpbnMgc2hvdWxkbid0IGJlCj4gbXV4ZWQgdG8gR1BJTyBp
ZiB1c2Vyc3BhY2UgcmVxdWVzdHMgdGhlIEdQSU8gdmlhIGdwaW9jdGwgb3Igc3lzZnMuCj4gKElN
SE8gaTJjIGlzbid0IHNwZWNpYWwgaGVyZSwgdGhpcyBzaG91bGQgYXBwbHkgdG8gYWxsIHVzZWQg
cGlucywKPiBzaG91bGRuJ3QgaXQ/KQoKVGhpcyBpcyBhbm90aGVyIHJlYXNvbiB3aHkgcGVvcGxl
IHRhZyB0aGVpciBwaW4gY29udHJvbGxlcnMKYXMgc3RyaWN0LCBhbmQgaW4gdGhhdCBjYXNlIHRo
aXMgd29ya3MuCgpGb3IgdGhvc2UgdGhhdCBhcmUgbm90IHN0cmljdCwgdXNlcnNwYWNlIGNhbiBp
bnRlcmNlcHQKdGhlIHNhbWUgcGlucyBhbmQgd3JlYWMgaGF2b2MuIFVzaW5nIEdQSU8gZnJvbSB1
c2Vyc3BhY2UKaXMgaW5kZWVkIGluIG1hbnkgY2FzZXMgYSBnb29kIGd1biB0byBzaG9vdCBvbmVz
ZWxmIGluCnRoZSBmb290IHdpdGguCgpUaGUgc29sdXRpb24gaXMgbm90IHBlcmZlY3QsIGltcHJv
dmVtZW50cyBjYW4gYmUgbWFkZS4KCj4gPiBTaW5jZSB0aGUgY2FsbGluZyBzaXRlIGtub3dzIGFi
b3V0IHRoaXMgdXNlY2FzZSB3ZSBjYW4KPiA+IG9wZW4gY29kZSB0aGUgc2VtYW50aWNzIGZvciB0
aGlzIHNwZWNpZmljYWxseS4KPgo+IFNpbmNlIHRoZSBjYWxsaW5nIHNpdGUgZG9lc24ndCBrbm93
IGlmIHRoZSBwaW4gaXMgdXNlZCBvdGhlcndpc2UsIGl0Cj4gc2hvdWxkIGRlZmF1bHQgdG8gX05P
TVVYPwoKU29ycnkgSSdtIG5vdCBmb2xsb3dpbmc/CgpJIHdhcyB0aGlua2luZyB0aGF0IGlmIHRo
ZSBJMkMgZHJpdmVyIGtub3dzIGl0IHdpbGwgYmUgZG9pbmcgdGhpcwppbXBlcmF0aXZlIEkyQyBy
ZWNvdmVyeSBieSBzaGFraW5nIHRoZSBwaW5zIGZyb20gdGhlIEdQSU8Kc2lkZSBvZiB0aGluZ3Ms
IGl0IHdpbGwgcmVxdWVzdCB0aGUgcGlucyB3aXRoIHRoZSBmbGFnCkdQSU9EX0ZMQUdTX0JJVF9O
T01VWCBhbmQgdGhlbiB0aGUgR1BJTyBhbmQKcGluIGNvbnRyb2wgc3Vic3lzdGVtcyBrbm93czog
ImFoYSB0aGV5IHdhbm5hIHVzZSB0aGVzZQpiZWhpbmQgdGhlIGJhY2sgb2YgcGluIGNvbnRyb2wg
c28gbGV0J3Mgbm90IGVuZm9yY2Ugc3R1ZmYsCmp1c3QgZ2l2ZSB0aGVtIGEgaGFuZGxlIHRvIHRo
ZSBsaW5lIGFuZCBtYWtlIHN1cmUgbm9ib2R5CmVsc2UgZ29lcyBhbmQgdXNlIHRoZXNlIGxpbmVz
Ii4KCllvdXJzLApMaW51cyBXYWxsZWlqCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
