Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0C53124646
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 12:56:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UwLZrQn+YxZP7IdY1mlcKN+Bdbxwqx4NqJl0VoJxXsk=; b=Sp9LAI7I+vYrHw
	GdfKp0ZXPhvrUNs50f63Y7MSmK1ZNhclFZnfjfvrDW3U8IGL/TMvy1FunkP2f9OwhXmUlaqK82Y5S
	4U5EpUItoZWcYpOEblPzG6LCfJ9/siDELK/7YbRcezZN3LIQUn7N5OXAKG+IQvtIKx8EjEtD75KkR
	7Ur3G/lBgCkvRCuIs8RldpQvv4w0orc8JWFFE8wU+GXi8r0P1wbhZcVenGxuJ4f+KJTbL4S+286L0
	zFLz/RMjeuetkP2m5eGX61nAyZ7cUQD37ekWnWuENf/JV4o+0wlSGvYmGzQO968l0QCKMEDpSsw6O
	C/a3MP66Uax+bUMETmkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihXvk-0005Gm-RR; Wed, 18 Dec 2019 11:55:52 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihXva-0005GK-HW; Wed, 18 Dec 2019 11:55:44 +0000
Received: by mail-wr1-x443.google.com with SMTP id d16so1956724wre.10;
 Wed, 18 Dec 2019 03:55:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=A9XMDbkjykdasKiXfW/wy1M+ql/+TZC+TS5C3QaqAzE=;
 b=rX7yQteL2z7erMU18+yi9De1vQQspA8IU9js2mEe0dmy5NAXIdr1eij7dNJDnq33YG
 CkVUw4n0A+6SBhs4zWqH5bLSjyruvl/mHXAgCBbzjkstCzRhggC/sbhTf/IX28r0lm3h
 mVxQG/Jmu5nYxI6pAp2EuZ5nkBtvVgqbs5TDOhdpRAeh3Sy02A5lWJZEZXKr3HW0dllR
 AW9N/t4CWHSbUOwz/4GL4fRFt87XQHbkXWukSY7f+hAnPBgS34Lyr7yBCyh+ppb+s0mN
 1pgW/YkS9lnUpi3HQfii15GSgcYHdHZPZx4Q/fDEdlG+hMIr8gH1GrfZHgydGIvDAnRD
 dF7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=A9XMDbkjykdasKiXfW/wy1M+ql/+TZC+TS5C3QaqAzE=;
 b=iNoXMms8nFF+fkiAtpybDzUY5ndeIDJjEIyh+uFL4XSLwbAY9ioxz8USyILs1diCYT
 Tom+ECvGvJCyJk5qHT4V0ujPIPSX61gbbGL/4VI21VjTUdL6mq9zKcesf1PYlvyuDmdX
 C4DexDxGOxubV0643OYkfLSpo+Rx6w/6yKxf1sipojsCxYlDgdoQNGqjx1gT29qfoTsS
 IYdF/MAcShbqgxncEMxvgdJWLfHiGSbRLPjBazFAWV9BNwmmqaHwzPhe/yBNRx71CFqr
 AhKlzVG+WoxFKSfnQqPoZQT+V3rehG8uTcxJJK9gj57xZltk4haRKKH7af+D/dzRCgkg
 FenQ==
X-Gm-Message-State: APjAAAXMxfjfWz95YcsveN+BL196ndP/lVOpYTVST3ZouBphFvTVvNcm
 XmZXOEVjmlPMxc5hBn0Jp9U=
X-Google-Smtp-Source: APXvYqyrhOQ2b4j/qBXySAEDKbQNPNebWrDmGNc0QMMmxtq2kRkw0mHnZSoZDdRcAbyPlCbw+s7XoA==
X-Received: by 2002:a5d:6ac5:: with SMTP id u5mr2390865wrw.271.1576670140813; 
 Wed, 18 Dec 2019 03:55:40 -0800 (PST)
Received: from [10.123.42.178] ([194.165.151.227])
 by smtp.gmail.com with ESMTPSA id x11sm2198579wmg.46.2019.12.18.03.55.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 18 Dec 2019 03:55:40 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Subject: Re: [PATCH v2 0/9] brcmfmac: add support for BCM4359 SDIO chipset
From: Christian Hewitt <christianshewitt@gmail.com>
In-Reply-To: <20191211235253.2539-1-smoch@web.de>
Date: Wed, 18 Dec 2019 13:55:35 +0200
Message-Id: <D1B53CE9-E87C-4514-A2D7-0FE70A4D1A5D@gmail.com>
References: <20191211235253.2539-1-smoch@web.de>
To: Soeren Moch <smoch@web.de>
X-Mailer: Apple Mail (2.3445.104.11)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_035542_582577_0077CC97 
X-CRM114-Status: GOOD (  16.05  )
X-Spam-Score: 3.4 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [194.165.151.227 listed in zen.spamhaus.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (christianshewitt[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: brcm80211-dev-list.pdl@broadcom.com, Heiko Stuebner <heiko@sntech.de>,
 Neil Armstrong <narmstrong@baylibre.com>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 brcm80211-dev-list@cypress.com, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cj4gT24gMTIgRGVjIDIwMTksIGF0IDE6NTIgYW0sIFNvZXJlbiBNb2NoIDxzbW9jaEB3ZWIuZGU+
IHdyb3RlOgo+IAo+IEFkZCBzdXBwb3J0IGZvciB0aGUgQkNNNDM1OSBjaGlwc2V0IHdpdGggU0RJ
TyBpbnRlcmZhY2UgYW5kIFJTREIgc3VwcG9ydAo+IHRvIHRoZSBicmNtZm1hYyB3aXJlbGVzcyBu
ZXR3b3JrIGRyaXZlciBpbiBwYXRjaGVzIDEtNy4KPiAKPiBFbmhhbmNlIGRldmljZXRyZWUgb2Yg
dGhlIFJvY2tQcm82NCBhcm02NC9yb2NrY2hpcCBib2FyZCB0byB1c2UgYW4KPiBBUDYzNTlTQSBi
YXNlZCB3aWZpL2J0IGNvbWJvIG1vZHVsZSB3aXRoIHRoaXMgY2hpcHNldCBpbiBwYXRjaGVzIDgt
OS4KPiAKPiAKPiBDaHVuZy1Ic2llbiBIc3UgKDEpOgo+ICBicmNtZm1hYzogc2V0IEYyIGJsb2Nr
c2l6ZSBhbmQgd2F0ZXJtYXJrIGZvciA0MzU5Cj4gCj4gU29lcmVuIE1vY2ggKDUpOgo+ICBicmNt
Zm1hYzogZml4IHJhbWJhc2UgZm9yIDQzNTkvOQo+ICBicmNtZm1hYzogbWFrZSBlcnJvcnMgd2hl
biBzZXR0aW5nIHJvYW1pbmcgcGFyYW1ldGVycyBub24tZmF0YWwKPiAgYnJjbWZtYWM6IGFkZCBz
dXBwb3J0IGZvciBCQ000MzU5IFNESU8gY2hpcHNldAo+ICBhcm02NDogZHRzOiByb2NrY2hpcDog
Um9ja1BybzY0OiBlbmFibGUgd2lmaSBtb2R1bGUgYXQgc2RpbzAKPiAgYXJtNjQ6IGR0czogcm9j
a2NoaXA6IFJvY2tQcm82NDogaG9vayB1cCBibHVldG9vdGggYXQgdWFydDAKPiAKPiBXcmlnaHQg
RmVuZyAoMyk6Cj4gIGJyY21mbWFjOiByZXNldCB0d28gRDExIGNvcmVzIGlmIGNoaXAgaGFzIHR3
byBEMTEgY29yZXMKPiAgYnJjbWZtYWM6IGFkZCBSU0RCIGNvbmRpdGlvbiB3aGVuIHNldHRpbmcg
aW50ZXJmYWNlIGNvbWJpbmF0aW9ucwo+ICBicmNtZm1hYzogbm90IHNldCBtYnNzIGluIHZpZiBp
ZiBmaXJtd2FyZSBkb2VzIG5vdCBzdXBwb3J0IE1CU1MKClRoYW5rcyBmb3IgcG9zdGluZyB0aGlz
IHNlcmllcywgdGhpcyBjaGlwIGlzIHdpZGVseSB1c2VkIGJ5IGEgbGFyZ2UgbnVtYmVyIG9mIGN1
cnJlbnQgQW1sb2dpYyBkZXZpY2VzIQoKUGF0Y2hlcyAxLTcgaGF2ZSBiZWVuIHRlc3RlZCBvbiBB
bWxvZ2ljIEcxMkIgKEtoYWRhcyBWSU0zKSBoYXJkd2FyZSB3aXRoIDUuNS1yYyBrZXJuZWwgYW5k
IGEgTGlicmVFTEVDIChkaXN0cm8pIGNvbGxlYWd1ZSBhbHNvIHRlc3RlZCB3aXRoIGEgS2hhZGFz
IEVkZ2UgYm9hcmQgKFJLMzM5OSkuIFRoZSBBbXBhayA2Mzk4UyBtb2R1bGUgb24gYm90aCBib2Fy
ZHMgYXJlIGRldGVjdGVkIGFuZCBjYW4gY29ubmVjdCB0byBuZXR3b3JrcyB0byBwYXNzIGJhc2lj
IGZ1bmN0aW9uYWwgdGVzdGluZy4KCk9uIHRoZSBWSU0zIGJvYXJkIEkgZG8gc2VlIHRoZSBmb2xs
b3dpbmcgd2FybmluZyBzcGxhdDoKClsgICAgNy45ODczNTFdIC0tLS0tLS0tLS0tLVsgY3V0IGhl
cmUgXS0tLS0tLS0tLS0tLQpbICAgIDcuOTg3MzgyXSBXQVJOSU5HOiBDUFU6IDUgUElEOiAzNiBh
dCBkcml2ZXJzL25ldC93aXJlbGVzcy9icm9hZGNvbS9icmNtODAyMTEvYnJjbWZtYWMvYmNtc2Ro
LmM6Nzc2IGJyY21mX3NkaW9kX3NndGFibGVfYWxsb2MrMHgxMzAvMHgxMzggW2JyY21mbWFjXQpb
ICAgIDcuOTg3Mzg0XSBNb2R1bGVzIGxpbmtlZCBpbjogYnJjbWZtYWMgZWNkaF9nZW5lcmljIGJy
Y211dGlsIHJ0Y19tZXNvbl92cnRjIHZpZGVvZGV2IGVjYyBjZmc4MDIxMSBncGlvX3BjYTk1M3gg
cmZraWxsIGlyX25lY19kZWNvZGVyIGNyY3QxMGRpZl9jZSByY19raGFkYXMgbWFsaV9rYmFzZShP
KSBtZXNvbl9pciBhb19jZWNfZzEyYSBtYyBydGNfaHltODU2MyByY19jb3JlIGdwaW9fa2V5c19w
b2xsZWQgYWRjX2tleXMgaXB2NiBuZl9kZWZyYWdfaXB2NiBjcmNfY2NpdHQgc2NoX2ZxX2NvZGVs
ClsgICAgNy45ODc0MDNdIENQVTogNSBQSUQ6IDM2IENvbW06IGt3b3JrZXIvNTowIFRhaW50ZWQ6
IEcgICAgICAgICAgIE8gICAgICA1LjUuMC1yYzEgIzEKWyAgICA3Ljk4NzQwNF0gSGFyZHdhcmUg
bmFtZTogS2hhZGFzIFZJTTMgKERUKQpbICAgIDcuOTg3NDE3XSBXb3JrcXVldWU6IGV2ZW50cyBi
cmNtZl9kcml2ZXJfcmVnaXN0ZXIgW2JyY21mbWFjXQpbICAgIDcuOTg3NDIwXSBwc3RhdGU6IDgw
MDAwMDA1IChOemN2IGRhaWYgLVBBTiAtVUFPKQpbICAgIDcuOTg3NDMyXSBwYyA6IGJyY21mX3Nk
aW9kX3NndGFibGVfYWxsb2MrMHgxMzAvMHgxMzggW2JyY21mbWFjXQpbICAgIDcuOTg3NDQzXSBs
ciA6IGJyY21mX3NkaW9fcHJvYmUrMHgyOGMvMHg4OTAgW2JyY21mbWFjXQpbICAgIDcuOTg3NDQ0
XSBzcCA6IGZmZmY4MDAwMTAxN2JhOTAKWyAgICA3Ljk4NzQ0NV0geDI5OiBmZmZmODAwMDEwMTdi
YTkwIHgyODogMDAwMDAwMDAwMDAwMDAwMCAKWyAgICA3Ljk4NzQ0N10geDI3OiAwMDAwMDAwMDAw
MDAwMDAwIHgyNjogZmZmZjAwMDBhOGMwOTQwMCAKWyAgICA3Ljk4NzQ0OV0geDI1OiBmZmZmODAw
MDBhMjRjYjA4IHgyNDogZmZmZjAwMDBhMzgwMDQwMCAKWyAgICA3Ljk4NzQ1MV0geDIzOiBmZmZm
ODAwMDEyYzYxOGM4IHgyMjogZmZmZjAwMDBhNjc1ZTAwMCAKWyAgICA3Ljk4NzQ1M10geDIxOiBm
ZmZmMDAwMGE2NzVlMDAwIHgyMDogMDAwMDAwMDAwMDAwMDAyMyAKWyAgICA3Ljk4NzQ1NF0geDE5
OiBmZmZmMDAwMGEzODAwMDAwIHgxODogZmZmZjgwMDAxM2IyNTkwOCAKWyAgICA3Ljk4NzQ1Nl0g
eDE3OiBmZmZmODAwMDEzYjI1ZDBjIHgxNjogZmZmZjgwMDAxM2IyNTEwNCAKWyAgICA3Ljk4NzQ1
N10geDE1OiAwMDAwMDAwMGYwMDAwMDAwIHgxNDogMDAwMDAwMDAwMDAwMDAwYSAKWyAgICA3Ljk4
NzQ1OV0geDEzOiAwMDAwMDAwMDAwMDAwMDAwIHgxMjogMDAwMDAwMDAwMDAwMDAwMSAKWyAgICA3
Ljk4NzQ2MF0geDExOiAwMDAwMDAwMDAwMDAwMDA1IHgxMDogMDEwMTAxMDEwMTAxMDEwMSAKWyAg
ICA3Ljk4NzQ2MV0geDkgOiBmZmZmZmZmZmZmZmZmZmZmIHg4IDogN2Y3ZjdmN2Y3ZjdmN2Y3ZiAK
WyAgICA3Ljk4NzQ2M10geDcgOiAwMDAwMDAwMDAwMDAwMWZmIHg2IDogMDAwMDAwMDAwMDAwMDA4
MCAKWyAgICA3Ljk4NzQ2NF0geDUgOiAwMDAwMDAwMDAwMDAwNjAwIHg0IDogMDAwMDAwMDAwMDAw
MDAwMyAKWyAgICA3Ljk4NzQ2Nl0geDMgOiBmZmZmMDAwMGE1YTNkODgwIHgyIDogMDAwMDAwMDAw
MDAwMDAyMSAKWyAgICA3Ljk4NzQ2N10geDEgOiAwMDAwMDAwMDAwMDAwMDAzIHgwIDogZmZmZjAw
MDBhNjc1ZTAwMCAKWyAgICA3Ljk4NzQ2OV0gQ2FsbCB0cmFjZToKWyAgICA3Ljk4NzQ4MV0gIGJy
Y21mX3NkaW9kX3NndGFibGVfYWxsb2MrMHgxMzAvMHgxMzggW2JyY21mbWFjXQpbICAgIDcuOTg3
NDkzXSAgYnJjbWZfc2Rpb19wcm9iZSsweDI4Yy8weDg5MCBbYnJjbWZtYWNdClsgICAgNy45ODc1
MDRdICBicmNtZl9zZGlvZF9wcm9iZSsweGUwLzB4MWMwIFticmNtZm1hY10KWyAgICA3Ljk4NzUx
Nl0gIGJyY21mX29wc19zZGlvX3Byb2JlKzB4MTZjLzB4MjA4IFticmNtZm1hY10KWyAgICA3Ljk4
NzUyMl0gIHNkaW9fYnVzX3Byb2JlKzB4ZTAvMHgxYzgKWyAgICA3Ljk4NzUyNl0gIHJlYWxseV9w
cm9iZSsweGQ4LzB4NDI4ClsgICAgNy45ODc1MjldICBkcml2ZXJfcHJvYmVfZGV2aWNlKzB4ZGMv
MHgxMzAKWyAgICA3Ljk4NzUzMV0gIGRldmljZV9kcml2ZXJfYXR0YWNoKzB4NmMvMHg3OApbICAg
IDcuOTg3NTMzXSAgX19kcml2ZXJfYXR0YWNoKzB4OWMvMHgxNjgKWyAgICA3Ljk4NzUzNV0gIGJ1
c19mb3JfZWFjaF9kZXYrMHg3MC8weGMwClsgICAgNy45ODc1MzZdICBkcml2ZXJfYXR0YWNoKzB4
MjAvMHgyOApbICAgIDcuOTg3NTM4XSAgYnVzX2FkZF9kcml2ZXIrMHgxOTAvMHgyMjAKWyAgICA3
Ljk4NzUzOV0gIGRyaXZlcl9yZWdpc3RlcisweDYwLzB4MTEwClsgICAgNy45ODc1NDFdICBzZGlv
X3JlZ2lzdGVyX2RyaXZlcisweDI0LzB4MzAKWyAgICA3Ljk4NzU1Ml0gIGJyY21mX3NkaW9fcmVn
aXN0ZXIrMHgxNC8weDQ4IFticmNtZm1hY10KWyAgICA3Ljk4NzU2M10gIGJyY21mX2RyaXZlcl9y
ZWdpc3RlcisweGMvMHgyMCBbYnJjbWZtYWNdClsgICAgNy45ODc1NjddICBwcm9jZXNzX29uZV93
b3JrKzB4MWUwLzB4MzU4ClsgICAgNy45ODc1NjldICB3b3JrZXJfdGhyZWFkKzB4NDAvMHg0ODgK
WyAgICA3Ljk4NzU3MV0gIGt0aHJlYWQrMHgxMTgvMHgxMjAKWyAgICA3Ljk4NzU3M10gIHJldF9m
cm9tX2ZvcmsrMHgxMC8weDE4ClsgICAgNy45ODc1NzVdIC0tLVsgZW5kIHRyYWNlIDgwOGFjN2Ux
NTlkMWZjMzMgXS0tLQoKSSBkb27igJl0IHNlZSB0aGlzIG9uIG9sZGVyIEFtbG9naWMgU29DcyAo
R1hML0dYTSBkZXZpY2VzIHdpdGggdmFyaW91cyBvdGhlciBCQ00gY2hpcHMpIG9yIGFub3RoZXIg
QW1sb2dpYyBHMTJCIGRldmljZSAoc2FtZSBTb0Mgd2l0aCBhIGRpZmZlcmVudCBBbXBhayBtb2R1
bGUpIG9yIHNvbWUgUkszMzk5IGRldmljZXMsIHNvIGl0IG1heSBiZSBzb21ldGhpbmcgYm9hcmQg
KEtoYWRhcyBWSU0zKSBzcGVjaWZpYy4KCkkgYWxzbyBzZWUgc29tZSBlcnJvcnMgbGlrZToKClsg
ICA3MS4wNDY1OTddIGJyY21mbWFjOiBicmNtZl9zZGlvX3JlYWRmcmFtZXM6IFJYSEVBREVSIEZB
SUxFRDogLTUKWyAgIDcxLjA0NjY1Ml0gYnJjbWZtYWM6IGJyY21mX3NkaW9fcnhmYWlsOiBhYm9y
dCBjb21tYW5kLCB0ZXJtaW5hdGUgZnJhbWUsIHNlbmQgTkFLClsgIDEyMy44NDQ4NjNdIGJyY21m
bWFjOiBicmNtZl9zZGlvX2J1c19zbGVlcDogZXJyb3Igd2hpbGUgY2hhbmdpbmcgYnVzIHNsZWVw
IHN0YXRlIC01ClsgIDEyNC42NzgzMjldIGJyY21mbWFjOiBicmNtZl9zZGlvX3R4ZmFpbDogc2Rp
byBlcnJvciwgYWJvcnQgY29tbWFuZCBhbmQgdGVybWluYXRlIGZyYW1lClsgIDEyNC42ODAyMjZd
IG1tYzA6IHR1bmluZyBleGVjdXRpb24gZmFpbGVkOiAtNQpbICAxMjQuNzA4ODQzXSBicmNtZm1h
YzogYnJjbWZfc2Rpb19idXNfc2xlZXA6IGVycm9yIHdoaWxlIGNoYW5naW5nIGJ1cyBzbGVlcCBz
dGF0ZSAtNQpbICAxMjUuNzAwNzY1XSBicmNtZm1hYzogYnJjbWZfc2Rpb190eGZhaWw6IHNkaW8g
ZXJyb3IsIGFib3J0IGNvbW1hbmQgYW5kIHRlcm1pbmF0ZSBmcmFtZQpbICAxMjUuODgwMzcyXSBi
cmNtZm1hYzogbW1jX3N1Ym1pdF9vbmU6IENNRDUzIHNnIGJsb2NrIHJlYWQgZmFpbGVkIC0yMgpb
ICAxMjUuODgwMzkzXSBicmNtZm1hYzogYnJjbWZfc2Rpb19yeGdsb206IGdsb20gcmVhZCBvZiA1
MTIgYnl0ZXMgZmFpbGVkOiAtNQpbICAxMjUuODgwNDAxXSBicmNtZm1hYzogYnJjbWZfc2Rpb19y
eGZhaWw6IGFib3J0IGNvbW1hbmQsIHRlcm1pbmF0ZSBmcmFtZQpbICAxMjUuODgxMjYyXSBicmNt
Zm1hYzogYnJjbWZfc2Rpb19yZWFkZnJhbWVzOiBicmNtZl9zZGlvX3JlYWRmcmFtZXM6IGdsb20g
c3VwZXJmcmFtZSB3L28gZGVzY3JpcHRvciEKWyAgMTI1Ljg4MTMxOF0gYnJjbWZtYWM6IGJyY21m
X3NkaW9fcnhmYWlsOiB0ZXJtaW5hdGUgZnJhbWUKWyAgMTMxLjg0NDI4OV0gYnJjbWZtYWM6IG1t
Y19zdWJtaXRfb25lOiBDTUQ1MyBzZyBibG9jayB3cml0ZSBmYWlsZWQgLTIyClsgIDEzMS44NDQz
MDJdIGJyY21mbWFjOiBicmNtZl9zZGlvX3R4ZmFpbDogc2RpbyBlcnJvciwgYWJvcnQgY29tbWFu
ZCBhbmQgdGVybWluYXRlIGZyYW1lClsgIDEzMS44NDQ0ODhdIGJyY21mbWFjOiBtbWNfc3VibWl0
X29uZTogQ01ENTMgc2cgYmxvY2sgd3JpdGUgZmFpbGVkIC0yMgpbICAxMzEuODQ0NDk0XSBicmNt
Zm1hYzogYnJjbWZfc2Rpb190eGZhaWw6IHNkaW8gZXJyb3IsIGFib3J0IGNvbW1hbmQgYW5kIHRl
cm1pbmF0ZSBmcmFtZQoKSeKAmW0gbm90IHN1cmUgaWYgdGhhdOKAmXMgb2YgYW55IGNvbmNlcm4s
IGJ1dCBpZiB5ZXMsIEnigJlkIGJlIGhhcHB5IHRvIGFwcGx5IGFueSBkZWJ1Z2dpbmcgcGF0Y2hl
cyB5b3UgcHJvdmlkZSB0byBnZW5lcmF0ZSBvdXRwdXQuCgpUaGFua3MgYWdhaW4gZm9yIHdvcmtp
bmcgb24gdGhpcyBjaGlwc2V0IQoKQ2hyaXN0aWFuCgoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cmxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
