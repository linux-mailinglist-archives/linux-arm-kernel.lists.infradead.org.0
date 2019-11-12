Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E082AF8CD2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 11:28:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NJ4bE9Almpq/yzaqApMKbEu0y/RU+cZvftcI3kgnt3U=; b=AmGtecxw7Tn0xq
	y2/DzGEjZb4jqXqg0uLks5xWVeZTrJx1Rz1rjbo9fubh9EC9O+PjrTeDAs2AUKjQNPg3iwOCcgz9x
	yVPDSVsXfKVJz63hAcS1Pc0ar37FnHZvqipF4l2FUtwhvXRCDK0z5cGDNsApEKn7wzVa8ibMwrH2O
	ward8S4zZDx9geUedF/0enLJE6T2aaHGTTtb8155zvOtQhucjlySjIWGMBltZwyYI4Mg7e/6o+Wh5
	qfyc1oKWpCFT3bxgFVCe86OgYHWmvhUCaOVJPaWpbs3G2fp74WnauZqwtsKKUCs77uuLkJ2OhzcI6
	O7w9e8ALV5wMTnXeToNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUTOr-0000XT-J0; Tue, 12 Nov 2019 10:27:53 +0000
Received: from mout.web.de ([212.227.15.3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUTOi-0000WD-0V; Tue, 12 Nov 2019 10:27:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1573554458;
 bh=zKVb9WMuQ7zRQYv1GZLrzWxEJS3VRLzbpd64rrU9ml8=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=HfR9J5b/gmhapoL2sT51uQh6y+xnNwBW4ssabaqMG4N1N0fY0zyAtG0yuC6Dhkfj7
 Nndrt5ainx8lVQi45ovWdYkC3C3WZ64v29SCvBohPrkTMawXWnAHYocxBWtGumDOMK
 lNzOAMX8lL2JHSKZWju/leD0+CGsY4ILFJLWkf/o=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.43.108] ([89.204.137.77]) by smtp.web.de (mrweb001
 [213.165.67.108]) with ESMTPSA (Nemesis) id 0MDgPG-1ig4gE0LSY-00H9Ox; Tue, 12
 Nov 2019 11:21:24 +0100
Subject: Re: [PATCH 3/3] arm64: dts: rk3399: Add init voltage for vdd_log
To: Kever Yang <kever.yang@rock-chips.com>,
 Markus Reichl <m.reichl@fivetechno.de>, heiko@sntech.de
References: <20191111005158.25070-1-kever.yang@rock-chips.com>
 <20191111005158.25070-3-kever.yang@rock-chips.com>
 <ef8830f3-10d1-7b71-0e18-232f2eaeef2d@web.de>
 <1eaef5d5-c923-da56-b9c4-48d517b3c969@rock-chips.com>
 <acbab893-9e9a-cfe1-67bf-a9e2b2e50114@fivetechno.de>
 <17e14b30-02ee-2379-8891-088677924479@rock-chips.com>
From: Soeren Moch <smoch@web.de>
Message-ID: <fd9ee2bc-9dfb-1aa2-f00f-add9b3069876@web.de>
Date: Tue, 12 Nov 2019 11:19:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <17e14b30-02ee-2379-8891-088677924479@rock-chips.com>
Content-Language: en-GB
X-Provags-ID: V03:K1:dSsn12ZY5BPyYvsi5lOeFhAuWonqE2SikhTXUxedBa/QOws+FOu
 Lwoaiezl4xgI1mVpEmVtCXu1r3/IWm0Mpa/jX8cRphuYEKuHOBLd3Ln5wP3NL9qZQH3xQ5E
 So6xWNQ6sErfO9qtb+M64aJo8Qk8imKVclSLc97xLYfJrlZHzDePPQQkF/Z/xys1w5ZsA/a
 XDJ43CAYOO5lvaP7IR8HA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:pbgGik7jPIU=:Muz22WWDhXzySJvrwHAv4J
 5MNm+tXgj+VPhBFHhpLsdQrRIx7ZkFng9RcKY9PTzDsIbTrnAzkO4TVtg9zLsA11WOt4/suTK
 3zZvjIN9Ms6yV/+bCbiuiNBLlULsC+DTK5iDsvYuVqJR6lT9tjO2tG80EK3G/pMQJjp7sMpke
 BxC6T8e8f/9uJDzlgskjcCRPfpfPEtQeuUDUlBS/6w2Dfx1hXKuYRFvHFICV43qpbXUl0WCpD
 PD1ci1dBlq4NRMKoDcWlYMseZXlaJ1g/jmCbnQWV+rj/Kq4tsID2FwLJBfknyeAvFQwQF4HVO
 emDxZ1kz3FTc3CpDb3A/bJDyUrsAt+l/CYq3aY84eqSudTgZzVZl5cu5fLBqd2YfysppkY6Sd
 1Vr7CzGcxD41l7WEcskSjQLcwQDwxMiJaML4gvrqYneotg9U9Y2H/tNTu/JntdSeu/CdlB1pp
 KSLVjqZuW69rp0dxfB+abMtw5YUujVM31wDJ3zhILT0p6viebfWpgE0V6m5n9ibCL58Y0/a+R
 68YwFJXKoeE64yWioF22aq7cQNG2tHAKyZaNFxINVL9jmUvtwBBRJ/eMC4UgmM0j22F6EjZUt
 uEonbz0pmPUQwHImYWFHeEYMykF6gU0xC+cCRHXLkdAen9aoJHQFfRdgGnplgeggaDDOr5jjC
 sTjkXZrvHu8hhQeIzN0v68xzZevjKiV6l0gp64yfyKsW5o5/yQ2nFSoEPojwLf2NhIXZJtEBO
 P3MuivR9ogX8LziD77sQRl2vdUp4KGTS/o6ccv5s0jJYX25WabePsKydrjyluCoFiqp2MLMA5
 y0y08KPL7oxHlQq1Ms3rExjfjkN1alQm1xjUIrATTpKqcbAFhUt+laVztVZp0V9Ale/IEFdGr
 nvUho45s9cQMInkcVLrDJza5Xszpy2XYEJW0wvGuKCkDQKASYf2XdGlyrJ5ddWrDp6UXXBqrr
 83af95atc5j4Twr6ls2juJvjVlEc/OugNVnA3nKPtku/RZL8WLvdnbA8cvzJyiALuzw4S5Bt8
 t0796xVQaDxdGMqr3je7YQWICGDE40P5OHlQh/isiAeOD26Noan1zsZkqZXgBUbjhY43jdWdY
 pnPFmyXrc07iDcaS2+MNkOdj8WAM9kdwG0P3pXLqESif/QViUGlff8iVuiGDIJ1rxa/VsiW78
 5OVilXY2LTnSXVYoAf1H+WkcVWI/MAuu2hVMuC4gx/aSYi/qeuN/CaLTDbYANnFlCfa2fiYCW
 mB96OSlyL5CgYuhw4hls76etct9TLRQhPpmgjV2Ew1NDisdeLubKVcl88LtCgwBN1hSYOulM0
 /V+9Z/wN8392867sOlJWwe9EoKWgACDJpdY3A4Pfu0bhDEeIjddzWvbLaDlmFsoX01gW7pseX
 ESTqvf4+Wa6WuPfd+m86WBseGNN5dcjQ1zmzJP4w5Ogov5OZkFv8rgqQY5g4mSbh7sG5XnUZp
 hwsMqhVivuawCdBrVXl5TVl/kHMP8W08MUYH0f13YqBcd/frZS1muWhxv5Wwl5uxcw2GRDGtM
 B4mZYKPtBLkDLTCsUWB5wx9c=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_022744_344817_96CD37F7 
X-CRM114-Status: GOOD (  17.35  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [89.204.137.77 listed in dnsbl.sorbs.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (smoch[at]web.de)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 =?UTF-8?Q?Andrius_=c5=a0tikonas?= <andrius@stikonas.eu>,
 Vivek Unune <npcomplete13@gmail.com>, Alexis Ballier <aballier@gentoo.org>,
 devicetree@vger.kernel.org, Katsuhiro Suzuki <katsuhiro@katsuster.net>,
 Robin Murphy <robin.murphy@arm.com>, Elaine Zhang <zhangqing@rock-chips.com>,
 linux-kernel@vger.kernel.org, Vicente Bergas <vicencb@gmail.com>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, Pragnesh Patel <Pragnesh_Patel@mentor.com>,
 Oskari Lemmela <oskari@lemmela.net>, Akash Gajjar <akash@openedev.com>,
 Nick Xie <nick@khadas.com>, Peter Robinson <pbrobinson@gmail.com>,
 Hugh Cole-Baker <sigmaris@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Andy Yan <andyshrk@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAxMi4xMS4xOSAxMTowMiwgS2V2ZXIgWWFuZyB3cm90ZToKPiBNYXJrdXMsCj4KPgo+IE9u
IDIwMTkvMTEvMTIg5LiL5Y2INDoxNiwgTWFya3VzIFJlaWNobCB3cm90ZToKPj4gSGkgS2V2ZXIs
Cj4+Cj4+IGhhdmUgYSByazMzOTktcm9jLXBjIHJ1bm5pbmcgbWFpbmxpbmUgVS1Cb290IGFuZCBr
ZXJuZWwgYW5kIHZkZF9sb2cgaXMKPj4gc2hvd2luZyAxMTE4IG1WLgo+Cj4gVGhlIHJrMzM5OS1y
b2MtcGMgaGF2ZSB0aGUgc2FtZSB2ZGRfbG9nIGNpcmN1aXQgaW4gc2NoZW1hdGljLCBzbyBpdAo+
IHNob3VsZCBsaWtlIHRoZSBwYXRjaCAxLzMgb2YKPgo+IHRoaXMgcGF0Y2ggc2V0Lgo+Cj4gSSBk
b24ndCB1bmRlcnN0YW5kIHdobyBpcyBzZXR0aW5nIHRoaXMgdmFsdWUsIG1heWJlIHRoZSBkZWZh
dWx0IHZhbHVlCj4gd2l0aG91dCBwd20gcmVndWxhdG9yIGVuYWJsZWQ/Cj4KPj4gSXMgdGhpcyBh
IGRhbmdlciBmb3IgdGhlIGJvYXJkPwo+PiBIb3cgdG8gZml4IGl0Pwo+Cj4gVGhlIGJlc3Qgd2F5
IGlzIHRvIHNldCBjb3JyZWN0IG1pbi9tYXggbWljcm92b2x0IG9mIHRoZQo+IHJlZ3VsYXRvciht
ZWFzdXJlIHdpdGggUFdNIG91dHB1dCBsb3cgYW5kIGhpZ2gpLApJIGRpZG4ndCBsb29rIGludG8g
dGhlIHNjaGVtYXRpYyBvZiB0aGlzIGJvYXJkLCBidXQgaWYgaXQgaXMgc2ltaWxhciB0bwpSb2Nr
UHJvNjQsIHNldHRpbmcgdGhlIHB3bSByZWd1bGF0b3IgdG8gdGhlIG1heCB2b2x0YWdlIG9mIDEu
N1Ygd2lsbApwcm9iYWJseSBraWxsIHRoZSByazMzOTkgaW1tZWRpYXRlbHkuIFNvIEkgcmVjb21t
ZW5kIG5vdCB0byBkbyB0aGlzLi4uCgpSZWdhcmRzLApTb2VyZW4KPgo+IChub3RlIHRoYXQgaWbC
oCBubyBkcml2ZXIgdG91Y2ggdGhlIHJlZ3VsYXRvciwgdGhlIFBXTSBpcyBkZWZhdWx0Cj4gaW5w
dXQsIG5vdCBvdXRwdXQ7KQo+IHRvCj4gYW5kIHNldCBhIGluaXQtbWljcm92b2x0IGZvciBVLUJv
b3QgZHJpdmVyLCBhbmQgSSB0aGluayBubyBrZXJuZWwKPiBkcml2ZXIgdG91Y2ggdGhpcyByZWd1
bGF0b3Igbm93Lgo+Cj4KPiBUaGFua3MsCj4KPiAtIEtldmVyCj4KPj4gQnR3LiB2aW4tc3VwcGx5
IGZvciB0aGlzIHB3bS1yZWd1bGF0b3IgaXMgaWdub3JlZCBhbmQgSSBjb3VsZCBub3QKPj4gZmlu
ZCBpdAo+PiBpbiBiaW5kaW5ncyBkb2MuCj4+Cj4+IEdydcOfLAo+Cj4KCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
