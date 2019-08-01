Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E72B67DE34
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 16:47:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PCRQQLHvoXgqfnJqNPCjW04ZvN/n9lpMX72snkxnvnk=; b=JxkSVrSk3LVILOu8vymj4vshh
	hzCSaComO+7kXqpApTxoGNEjOGa8cjc5nX9Iogrbrrebkgm4RLG5sRp0epnYH/0cN2D24SossxaUp
	TgBTBc0dCrmbfZ+FnAW/yogP10LCBBpkiT0Lc9h3ZLiuOLs27bY6gGFD5YI5bVknsBMS1YqhuMJ8f
	N/yFXqo18o21/jWn64PcXyw3+VAcbmUWp9zHA3gE7gtaFCCODQt9o0nelT7dhk7uoxRuTX7+BUF3q
	miDC/xAhweZkoh3AreRn1usR1gi7uR8yPgY2co8h6w5GUbJrI0kZRAsIVEowJWn8jOHLUN3l5QLK/
	sQRi/u0AQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htCMo-0002lL-G0; Thu, 01 Aug 2019 14:47:42 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htCMd-0002jU-Hu
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 14:47:33 +0000
Received: by mail-wm1-x341.google.com with SMTP id v15so64952287wml.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 07:47:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WaDcN9WC4e6YZt11roMS5sP9Gt2rMT2E9rLc1twFKIo=;
 b=p9wFGDVuupIvGFQkDJES1JlPMge8CBH+WBw4SABtqf3a7uxFiEgzcSqDdUpdLcNVqh
 8AOU46zQ8xDDPLKiSrRrDgEIwA5L3J7fuWZfJZLDzII/uCaGNsJcvov/yQdKRrYr1RI7
 d9Lw3TSZVUeEIsA5P2MUrcsjXJAw4rqVTTFtY0YcEe71X2/eQh8G8Xj832axtJAjCfX0
 bM8N81iWXe4J2s4eUlhVSP5MpPd1gHvmVu1Pvubl7ZrnjFC/lInTMyZmz03aGtIkTCYK
 pjG+y16AfMwOBg0gGpNxvZOgzEp6JHzTPUKfNlAY5ZD4+PYSeST2xx9ViCwD2K6qie+k
 fmow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WaDcN9WC4e6YZt11roMS5sP9Gt2rMT2E9rLc1twFKIo=;
 b=mWzuHGQUJXXV63Q8Cf3Gp+mzfFtIrZh73pZiokp4EK5fvt2T6Nt3bSQEYDIyW3igkx
 a3eUybpGRkCA4UrEJIpdyTt2cMfjL7xNnZAU0Mq08uePPJJuG2Ld3tFaU/LUsx+kN04M
 1Ha9INrpZYgBy9wk4H6ieyLF62IQp2OxfnfLwFqXhYbWChB8g/tbHHgciBNy4TjIFMr+
 mPJz7NXI6UEH+ntD/gWxMoxOzYKySf3Cp6KTJydXPPpPP42ofWvx+vSw07+wmtARAKVO
 7qgYCkhJQ9PNuyD7GgIL8GMd5GtIF6KJVDPJl9Mva5fOi25ZkvQMkl17UHEopHQV6381
 NT0Q==
X-Gm-Message-State: APjAAAU9lbz2enjAxWFFIS3JY/LfI19Rj4DiL+GMk5AILNtZfDfngjpL
 rDFLf4yl5g5c2aaJXS3KhA9FaJim5RMRwhKdGzQ=
X-Google-Smtp-Source: APXvYqwaqfkmr3nMyGcwwM5DehseSWfarkwjr47J2NS8nVy8YDVIdf3UQrexJUabYxCuaofvNUgfs+DVMLz30kRMRoM=
X-Received: by 2002:a7b:c051:: with SMTP id u17mr114333183wmc.25.1564670850160; 
 Thu, 01 Aug 2019 07:47:30 -0700 (PDT)
MIME-Version: 1.0
References: <1564563107-23736-1-git-send-email-hongxing.zhu@nxp.com>
In-Reply-To: <1564563107-23736-1-git-send-email-hongxing.zhu@nxp.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Thu, 1 Aug 2019 17:47:17 +0300
Message-ID: <CAEnQRZCz=fu7-2PmH+RGgnRgzeDCeR+A+wPbhjq2wQ2CZ3oQYg@mail.gmail.com>
Subject: Re: [PATCH v3] mailbox: imx: add support for imx v1 mu
To: Richard Zhu <hongxing.zhu@nxp.com>
Content-Type: multipart/mixed; boundary="000000000000370253058f0f52f8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_074731_618150_F82EF661 
X-CRM114-Status: GOOD (  21.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (daniel.baluta[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, jassisinghbrar@gmail.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Oleksij Rempel <o.rempel@pengutronix.de>, dl-linux-imx <linux-imx@nxp.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--000000000000370253058f0f52f8
Content-Type: text/plain; charset="UTF-8"

Hi Richard,

Thanks for the patch. Please always add linux-imx@nxp.com mailing
list for imx related patches. I missed it.

Few comments inline.

Please also update in a separate patch attached to this series
the devictree bindings doc Documentation/devicetree/bindings/mailbox/fsl,mu.txt
by adding description for mx7ulp-mu

<snip>

> There is a version1.0 MU on i.MX7ULP platform.

space between version and 1.0

> One new version ID register is added, and it's offset is 0.
> TRn registers are defined at the offset 0x20 ~ 0x2C.
> RRn registers are defined at the offset 0x40 ~ 0x4C.
> SR/CR registers are defined at 0x60/0x64.
> Extend this driver to support it.

Do you have a little bit of history about MU versioning? So there was:

* version 0.5 on i.MX6-es
* version 1.0 on i.MX7ULP

Next, is this 1.0 compatbile with i.MX8 right?

Also, can you please rebase your patch on my 2 bugfixes attached?

thanks,
Daniel.

--000000000000370253058f0f52f8
Content-Type: text/x-patch; charset="US-ASCII"; 
	name="0002-mailbox-imx-Clear-the-right-interrupts-at-shutdown.patch"
Content-Disposition: attachment; 
	filename="0002-mailbox-imx-Clear-the-right-interrupts-at-shutdown.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_jysslp290>
X-Attachment-Id: f_jysslp290

RnJvbSBmOWYzODJiOGNhYjJjZjg4YWJmN2ZiMjZiODg1YWM5NmUwY2JhZmY0IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBEYW5pZWwgQmFsdXRhIDxkYW5pZWwuYmFsdXRhQG54cC5jb20+
CkRhdGU6IFRodSwgMSBBdWcgMjAxOSAxNzo0MToyNSArMDMwMApTdWJqZWN0OiBbUEFUQ0ggMi8y
XSBtYWlsYm94OiBpbXg6IENsZWFyIHRoZSByaWdodCBpbnRlcnJ1cHRzIGF0IHNodXRkb3duCgpN
YWtlIHN1cmUgdG8gb25seSBjbGVhciBlbmFibGVkIGludGVycnVwdHMga2VlcGluZyBjb3VudApv
ZiB0aGUgY29ubmVjdGlvbiB0eXBlLgoKU3VnZ2VzdGVkLWJ5OiBPbGVrc2lqIFJlbXBlbCA8by5y
ZW1wZWxAcGVuZ3V0cm9uaXguZGU+ClNpZ25lZC1vZmYtYnk6IERhbmllbCBCYWx1dGEgPGRhbmll
bC5iYWx1dGFAbnhwLmNvbT4KLS0tCiBkcml2ZXJzL21haWxib3gvaW14LW1haWxib3guYyB8IDE1
ICsrKysrKysrKysrKystLQogMSBmaWxlIGNoYW5nZWQsIDEzIGluc2VydGlvbnMoKyksIDIgZGVs
ZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9tYWlsYm94L2lteC1tYWlsYm94LmMgYi9k
cml2ZXJzL21haWxib3gvaW14LW1haWxib3guYwppbmRleCA5NTdjMTBjNGU2NzQuLjNlY2ViZGM3
ZjkxMyAxMDA2NDQKLS0tIGEvZHJpdmVycy9tYWlsYm94L2lteC1tYWlsYm94LmMKKysrIGIvZHJp
dmVycy9tYWlsYm94L2lteC1tYWlsYm94LmMKQEAgLTIxOSw4ICsyMTksMTkgQEAgc3RhdGljIHZv
aWQgaW14X211X3NodXRkb3duKHN0cnVjdCBtYm94X2NoYW4gKmNoYW4pCiAJCXJldHVybjsKIAl9
CiAKLQlpbXhfbXVfeGNyX3Jtdyhwcml2LCAwLCBJTVhfTVVfeENSX1RJRW4oY3AtPmlkeCkgfAot
CQkgICAgICAgSU1YX01VX3hDUl9SSUVuKGNwLT5pZHgpIHwgSU1YX01VX3hDUl9HSUVuKGNwLT5p
ZHgpKTsKKwlzd2l0Y2ggKGNwLT50eXBlKSB7CisJCWNhc2UgSU1YX01VX1RZUEVfVFg6CisJCWlt
eF9tdV94Y3Jfcm13KHByaXYsIDAsIElNWF9NVV94Q1JfVElFbihjcC0+aWR4KSk7CisJCWJyZWFr
OworCWNhc2UgSU1YX01VX1RZUEVfUlg6CisJCWlteF9tdV94Y3Jfcm13KHByaXYsIDAsIElNWF9N
VV94Q1JfUklFbihjcC0+aWR4KSk7CisJCWJyZWFrOworCWNhc2UgSU1YX01VX1RZUEVfUlhEQjoK
KwkJaW14X211X3hjcl9ybXcocHJpdiwgMCwgSU1YX01VX3hDUl9HSUVuKGNwLT5pZHgpKTsKKwkJ
YnJlYWs7CisJZGVmYXVsdDoKKwkJYnJlYWs7CisJfQogCiAJZnJlZV9pcnEocHJpdi0+aXJxLCBj
aGFuKTsKIH0KLS0gCjIuMTcuMQoK
--000000000000370253058f0f52f8
Content-Type: text/x-patch; charset="US-ASCII"; 
	name="0001-mailbox-imx-Fix-Tx-doorbell-shutdown-path.patch"
Content-Disposition: attachment; 
	filename="0001-mailbox-imx-Fix-Tx-doorbell-shutdown-path.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_jysslp2r1>
X-Attachment-Id: f_jysslp2r1

RnJvbSA4Yzc2NzBjOTE5ODMzNmY1ZTgzZjgzMjJjYjk0YmE3NzZiNzU5MTI1IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBEYW5pZWwgQmFsdXRhIDxkYW5pZWwuYmFsdXRhQG54cC5jb20+
CkRhdGU6IFdlZCwgMzEgSnVsIDIwMTkgMjM6NDc6MjkgKzAzMDAKU3ViamVjdDogW1BBVENIIDEv
Ml0gbWFpbGJveDogaW14OiBGaXggVHggZG9vcmJlbGwgc2h1dGRvd24gcGF0aAoKVHggZG9vcmJl
bGwgaXMgaGFuZGxlZCBieSB0eGRiX3Rhc2tsZXQgYW5kIGRvZXNuJ3QKaGF2ZSBhbiBhc3NvY2lh
dGVkIElSUS4KCkFueWhvdywgaW14X211X3NodXRkb3duIGlnbm9yZXMgdGhpcyBhbmQgdHJpZXMg
dG8KZnJlZSBhbiBJUlEgdGhhdCB3YXNuJ3QgcmVxdWVzdGVkIGZvciBUeCBEQiByZXN1bHRpbmcK
aW4gdGhlIGZvbGxvd2luZyB3YXJuaW5nOgoKWyAgICAxLjk2NzY0NF0gVHJ5aW5nIHRvIGZyZWUg
YWxyZWFkeS1mcmVlIElSUSAyNgpbICAgIDEuOTcyMTA4XSBXQVJOSU5HOiBDUFU6IDIgUElEOiAx
NTcgYXQga2VybmVsL2lycS9tYW5hZ2UuYzoxNzA4IF9fZnJlZV9pcnErMHhjMC8weDM1OApbICAg
IDEuOTgwMDI0XSBNb2R1bGVzIGxpbmtlZCBpbjoKWyAgICAxLjk4MzA4OF0gQ1BVOiAyIFBJRDog
MTU3IENvbW06IGt3b3JrZXIvMjoxIFRhaW50ZWQ6IEcKWyAgICAxLjk5MzUyNF0gSGFyZHdhcmUg
bmFtZTogRnJlZXNjYWxlIGkuTVg4UVhQIE1FSyAoRFQpClsgICAgMS45OTg2NjhdIFdvcmtxdWV1
ZTogZXZlbnRzIGRlZmVycmVkX3Byb2JlX3dvcmtfZnVuYwpbICAgIDIuMDAzODEyXSBwc3RhdGU6
IDYwMDAwMDg1IChuWkN2IGRhSWYgLVBBTiAtVUFPKQpbICAgIDIuMDA4NjA3XSBwYyA6IF9fZnJl
ZV9pcnErMHhjMC8weDM1OApbICAgIDIuMDEyMzY0XSBsciA6IF9fZnJlZV9pcnErMHhjMC8weDM1
OApbICAgIDIuMDE2MTExXSBzcCA6IGZmZmYwMDAwMTE3OWI3ZTAKWyAgICAyLjAxOTQyMl0geDI5
OiBmZmZmMDAwMDExNzliN2UwIHgyODogMDAwMDAwMDAwMDAwMDAxOApbICAgIDIuMDI0NzM2XSB4
Mjc6IGZmZmYwMDAwMTEyMzMwMDAgeDI2OiAwMDAwMDAwMDAwMDAwMDA0ClsgICAgMi4wMzAwNTNd
IHgyNTogMDAwMDAwMDAwMDAwMDAxYSB4MjQ6IGZmZmY4MDA4M2JlYzc0ZDQKWyAgICAyLjAzNTM2
OV0geDIzOiAwMDAwMDAwMDAwMDAwMDAwIHgyMjogZmZmZjgwMDgzYmVjNzU4OApbICAgIDIuMDQw
Njg2XSB4MjE6IGZmZmY4MDA4M2IxZmU4ZDggeDIwOiBmZmZmODAwODNiZWM3NDAwClsgICAgMi4w
NDYwMDNdIHgxOTogMDAwMDAwMDAwMDAwMDAwMCB4MTg6IGZmZmZmZmZmZmZmZmZmZmYKWyAgICAy
LjA1MTMyMF0geDE3OiAwMDAwMDAwMDAwMDAwMDAwIHgxNjogMDAwMDAwMDAwMDAwMDAwMApbICAg
IDIuMDU2NjM3XSB4MTU6IGZmZmYwMDAwMTExMjk2YzggeDE0OiBmZmZmMDAwMDkxNzliNTE3Clsg
ICAgMi4wNjE5NTNdIHgxMzogZmZmZjAwMDAxMTc5YjUyNSB4MTI6IGZmZmYwMDAwMTExNDIwMDAK
WyAgICAyLjA2NzI3MF0geDExOiBmZmZmMDAwMDExMTI5ZjIwIHgxMDogZmZmZjAwMDAxMDVkYTk3
MApbICAgIDIuMDcyNTg3XSB4OSA6IDAwMDAwMDAwZmZmZmZmZDAgeDggOiAwMDAwMDAwMDAwMDAw
MTk0ClsgICAgMi4wNzc5MDNdIHg3IDogNjEyMDY1NjU3MjY2MjA2ZiB4NiA6IGZmZmYwMDAwMTEx
ZTdiMDkKWyAgICAyLjA4MzIyMF0geDUgOiAwMDAwMDAwMDAwMDAwMDAzIHg0IDogMDAwMDAwMDAw
MDAwMDAwMApbICAgIDIuMDg4NTM3XSB4MyA6IDAwMDAwMDAwMDAwMDAwMDAgeDIgOiAwMDAwMDAw
MGZmZmZmZmZmClsgICAgMi4wOTM4NTRdIHgxIDogMjhiNzBmMGEyYjYwYTUwMCB4MCA6IDAwMDAw
MDAwMDAwMDAwMDAKWyAgICAyLjA5OTE3M10gQ2FsbCB0cmFjZToKWyAgICAyLjEwMTYxOF0gIF9f
ZnJlZV9pcnErMHhjMC8weDM1OApbICAgIDIuMTA1MDIxXSAgZnJlZV9pcnErMHgzOC8weDk4Clsg
ICAgMi4xMDgxNzBdICBpbXhfbXVfc2h1dGRvd24rMHg5MC8weGIwClsgICAgMi4xMTE5MjFdICBt
Ym94X2ZyZWVfY2hhbm5lbC5wYXJ0LjIrMHgyNC8weGI4ClsgICAgMi4xMTY0NTNdICBtYm94X2Zy
ZWVfY2hhbm5lbCsweDE4LzB4MjgKClRoaXMgYnVnIGlzIHByZXNlbnQgZnJvbSB0aGUgYmVnaW5u
aW5nIG9mIHRpbWVzLgoKQ2M6IE9sZWtzaWogUmVtcGVsIDxvLnJlbXBlbEBwZW5ndXRyb25peC5k
ZT4KU2lnbmVkLW9mZi1ieTogRGFuaWVsIEJhbHV0YSA8ZGFuaWVsLmJhbHV0YUBueHAuY29tPgot
LS0KIGRyaXZlcnMvbWFpbGJveC9pbXgtbWFpbGJveC5jIHwgNCArKystCiAxIGZpbGUgY2hhbmdl
ZCwgMyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9t
YWlsYm94L2lteC1tYWlsYm94LmMgYi9kcml2ZXJzL21haWxib3gvaW14LW1haWxib3guYwppbmRl
eCA5Zjc0ZGVlMWE1OGMuLjk1N2MxMGM0ZTY3NCAxMDA2NDQKLS0tIGEvZHJpdmVycy9tYWlsYm94
L2lteC1tYWlsYm94LmMKKysrIGIvZHJpdmVycy9tYWlsYm94L2lteC1tYWlsYm94LmMKQEAgLTIx
NCw4ICsyMTQsMTAgQEAgc3RhdGljIHZvaWQgaW14X211X3NodXRkb3duKHN0cnVjdCBtYm94X2No
YW4gKmNoYW4pCiAJc3RydWN0IGlteF9tdV9wcml2ICpwcml2ID0gdG9faW14X211X3ByaXYoY2hh
bi0+bWJveCk7CiAJc3RydWN0IGlteF9tdV9jb25fcHJpdiAqY3AgPSBjaGFuLT5jb25fcHJpdjsK
IAotCWlmIChjcC0+dHlwZSA9PSBJTVhfTVVfVFlQRV9UWERCKQorCWlmIChjcC0+dHlwZSA9PSBJ
TVhfTVVfVFlQRV9UWERCKSB7CiAJCXRhc2tsZXRfa2lsbCgmY3AtPnR4ZGJfdGFza2xldCk7CisJ
CXJldHVybjsKKwl9CiAKIAlpbXhfbXVfeGNyX3Jtdyhwcml2LCAwLCBJTVhfTVVfeENSX1RJRW4o
Y3AtPmlkeCkgfAogCQkgICAgICAgSU1YX01VX3hDUl9SSUVuKGNwLT5pZHgpIHwgSU1YX01VX3hD
Ul9HSUVuKGNwLT5pZHgpKTsKLS0gCjIuMTcuMQoK
--000000000000370253058f0f52f8
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--000000000000370253058f0f52f8--

