Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6387ACAF4A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 21:32:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LZJ3yOxoSmiLtfs6EuRG5Abe4UaJSyILpGT18LpD5zI=; b=PKs39waPkOVU6b
	KyIeJ1pXMAa7bK82eGEFDcQyYmIGfIyIANcjIhIK7N1BGw5njuvjYgpjtAeUfzyrXOVsWmh3FjNA6
	zuHrlztfRPHLkA3Ax97wohjEAtBZvAdp8OqPgztv4chKXQcbSKwYEs8EOm9mjOvLZvwrSa9otVI7e
	rpAuML3VAbPjfn0OpRzf5qHcinEr3zyu8b0A5jj9NU9LzLp3A4zvE1Vxl+tRYYk5yb5yspei8XVlQ
	D9F7ep169nWctvuCulimJ5uhvgpmzuYdkx+NmTa4yC3Y0RLshx2eFXaq8L2aPND93JDBVXB+vmM15
	QUjeYr/v1QTeEDzb/GwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG6pg-0007JV-8C; Thu, 03 Oct 2019 19:32:12 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG6pY-0007Id-Sh; Thu, 03 Oct 2019 19:32:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1570131113;
 bh=RsYW1tMQhVxSymVlEwGdBTZwMm3ZvLd9uaMyWMV0vz0=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=UNGyNJNeHfCx0k5lM+snCmDHFOZUU+nGO08Jh4E7eYCrsVXlTAI4bh3+NnbwWQsYQ
 b/rxTff9qTHfmK2nI13TS78wm12BAN+kM8u7Wirb//wCPhUmBWomiSQeZXAPp9vvVe
 i7Igv7cXyBHOy1ft6OHSJvs8k038RC8FVswqMbmM=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from longitude ([89.0.25.131]) by mail.gmx.com (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MPGRp-1iUcVg0bmf-00Pf1D; Thu, 03
 Oct 2019 21:31:53 +0200
From: =?UTF-8?q?Jonathan=20Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>
To: devicetree@vger.kernel.org
Subject: [PATCH] dt-bindings: usb: Fix references to usb-hcd.yaml
Date: Thu,  3 Oct 2019 21:31:32 +0200
Message-Id: <20191003193132.17758-1-j.neuschaefer@gmx.net>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:M1Cfub0cD8k5EWKPSmYJTQTfT0r5TxH1kizM8MObV5ouKOLtROW
 Y6Ve8LeMLt58u942N7DVrT7n9xh3Ro+vHN+He3rDjffEFt9acuMdP2CaSEXMNkf57Qn9TYS
 55iJdWnmjNPcLrCVWjQcV8Eh6ynBgXl+1OW+ZUZrq6re9aJVoe6EV36RHPoEoLO5WJPiRBb
 JtOOuApOnXnCR12OfgPLA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:K139XvLUorM=:UC2svAclllxusezgtqx7aj
 OQIMOkW9Yx52Cldj7c9AyhGNOkd4nddtd/qLQwHYhZ1CuDakZlc7LjgX1JD6CLdVuvlJRXInX
 ZT1c5ncYj4HaPvZoLZCbgO9ZCwz1qcp0/NTkjulPw0dTqfAdeT8K9tIkmQuprYGFbnW9kMEFk
 1c4QV3D9sKYmVH2KqadNCJc1rw2ARIQRsk2e/CoiAjgwRLiyeYH04S0FlreAKn3icTc2qzV7k
 oYF8ucnwIAdhc9o81jnE5zuxIP2VMy7655mtWfh7GqxtWJ2RNRR4ZViHPzAHjdz+2my76c1Yo
 9DTgPfvoWYIQJp6IJvzs9pn3FnwyKB0ibxEAZfUM7K+jsci2V/ckg+v9PRIz0MTaJMFNSdg1V
 flkR6Okr8vZEEHqdWD2opuVm7Jo2f1qjvPTvDY1YdBy+y6rL+giFEkx+NulDPPPqMRFNF/c+x
 S159BYfGpOxPSq/VcqzV1u91xNp4wJo/nMKHoyVF2IAyQ4O+/r3GPsABzFI15dqcw+YwCBTA1
 ZLRDQK3K/s5SfyQAfS25cmIWwhBbjnv+7gOLmtDCRo7EgS2gMOeAClMVyX9ptz/rw5s7pwtle
 1MQlwv3qK3dqfPsDIe8Q8rtA3JwYbZQ6GsdJD6ZwQmkZ7FNTq//s6zDTwOdodKzpfQLRsVss5
 FzoYqgBNMT3LHCXWVCr2CuRQD+L5Gxrlzxt6yda4vQPP0wL3i6VIENTNInShBXhudRoLODm8I
 4s339OIHrw6nVIKkDfOD0eYnVrgssn3li6j1b2k7JbUZKfW6tTn72g0oBKmUSR5LZs8xfeptL
 SwLZF2JfnAcmtLKj5lAtXWpSsq7PtmxN74rLbCFgDTouLmIcW4c7fJImwiwWdjwC+0Sr+7TGw
 Bh3DBLYk+c2JlwigKP3IfpAM03wAVG+ENRhDAVVkw5JV+wFnVJu+6pHNreC5ztaOah86qaEKv
 fXIQ3wlllKZhflxBHbdiarQc/Bdj4Rumiz/mN1ElqMGJHjZrtWtEH1OZDnPSiG0glJQKtg1Hk
 C9J6tgurj+KK1Dxtx110JV/c5ZZIoF9vsg7cKzEm7t4y2uA+CsN1rHsmL55L38z5UBLhw+OK5
 hbGFSGshNBGXYNPpmFAiGRftBMcPVyvWr11mrpQRmUvECKnjMSlwusjr9HTDof2DAOULLLrtV
 YGxUhG163JZkeAZ/OMJ5zk/EFA2AaWgLAzfAdrsTDly40glEiSu08S4tvb/AfypvBTh5p0q98
 9ynbT0qOnrogEiG4xqmKRv5G58ez0e+DSlvdzJ0qkCssv4Ht6EzLoJ6QYuRM=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_123205_226990_354316E3 
X-CRM114-Status: UNSURE (   9.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.22 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (j.neuschaefer[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.22 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 =?UTF-8?q?Jonathan=20Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

dXNiLWhjZC50eHQgaGFzIGJlZW4gY29udmVydGVkIHRvIFlBTUwuIFVwZGF0ZSByZWZlcmVuY2Vz
IGFjY29yZGluZ2x5LgoKRml4ZXM6IDE0ZWMwNzJhMTlhZCAoImR0LWJpbmRpbmdzOiB1c2I6IENv
bnZlcnQgVVNCIEhDRCBnZW5lcmljIGJpbmRpbmcgdG8gWUFNTCIpClNpZ25lZC1vZmYtYnk6IEpv
bmF0aGFuIE5ldXNjaMOkZmVyIDxqLm5ldXNjaGFlZmVyQGdteC5uZXQ+Ci0tLQogRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3VzYi9tZWRpYXRlayxtdGsteGhjaS50eHQgfCA0ICsr
LS0KIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy91c2IvbWVkaWF0ZWssbXR1My50
eHQgICAgIHwgNCArKy0tCiBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdXNiL3Vz
Yi11aGNpLnR4dCAgICAgICAgICB8IDIgKy0KIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy91c2IvdXNiLXhoY2kudHh0ICAgICAgICAgIHwgNCArKy0tCiA0IGZpbGVzIGNoYW5nZWQs
IDcgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdXNiL21lZGlhdGVrLG10ay14aGNpLnR4dCBiL0RvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy91c2IvbWVkaWF0ZWssbXRrLXhoY2kudHh0Cmlu
ZGV4IGYzZTRhY2VjYWJlOC4uNDJkODgxNGY5MDNhIDEwMDY0NAotLS0gYS9Eb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvdXNiL21lZGlhdGVrLG10ay14aGNpLnR4dAorKysgYi9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdXNiL21lZGlhdGVrLG10ay14aGNpLnR4dApA
QCAtMzMsNyArMzMsNyBAQCBSZXF1aXJlZCBwcm9wZXJ0aWVzOgogCSJkbWFfY2siOiBkbWFfYnVz
IGNsb2NrIGZvciBkYXRhIHRyYW5zZmVyIGJ5IERNQSwKIAkieGhjaV9jayI6IGNvbnRyb2xsZXIg
Y2xvY2sKCi0gLSBwaHlzIDogc2VlIHVzYi1oY2QudHh0IGluIHRoZSBjdXJyZW50IGRpcmVjdG9y
eQorIC0gcGh5cyA6IHNlZSB1c2ItaGNkLnlhbWwgaW4gdGhlIGN1cnJlbnQgZGlyZWN0b3J5Cgog
T3B0aW9uYWwgcHJvcGVydGllczoKICAtIHdha2V1cC1zb3VyY2UgOiBlbmFibGUgVVNCIHJlbW90
ZSB3YWtldXA7CkBAIC01Myw3ICs1Myw3IEBAIE9wdGlvbmFsIHByb3BlcnRpZXM6CiAJU2VlOiBE
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGluY3RybC9waW5jdHJsLWJpbmRpbmdz
LnR4dAogIC0gaW1vZC1pbnRlcnZhbC1uczogZGVmYXVsdCBpbnRlcnJ1cHQgbW9kZXJhdGlvbiBp
bnRlcnZhbCBpcyA1MDAwbnMKCi1hZGRpdGlvbmFsbHkgdGhlIHByb3BlcnRpZXMgZnJvbSB1c2It
aGNkLnR4dCAoaW4gdGhlIGN1cnJlbnQgZGlyZWN0b3J5KSBhcmUKK2FkZGl0aW9uYWxseSB0aGUg
cHJvcGVydGllcyBmcm9tIHVzYi1oY2QueWFtbCAoaW4gdGhlIGN1cnJlbnQgZGlyZWN0b3J5KSBh
cmUKIHN1cHBvcnRlZC4KCiBFeGFtcGxlOgpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL3VzYi9tZWRpYXRlayxtdHUzLnR4dCBiL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy91c2IvbWVkaWF0ZWssbXR1My50eHQKaW5kZXggYjlhZjdmNWVlOTFk
Li5lMGFlNjA5NmY3YWMgMTAwNjQ0Ci0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy91c2IvbWVkaWF0ZWssbXR1My50eHQKKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL3VzYi9tZWRpYXRlayxtdHUzLnR4dApAQCAtMTcsNyArMTcsNyBAQCBSZXF1aXJl
ZCBwcm9wZXJ0aWVzOgogIC0gY2xvY2stbmFtZXMgOiBtdXN0IGNvbnRhaW4gInN5c19jayIgZm9y
IGNsb2NrIG9mIGNvbnRyb2xsZXIsCiAJdGhlIGZvbGxvd2luZyBjbG9ja3MgYXJlIG9wdGlvbmFs
OgogCSJyZWZfY2siLCAibWN1X2NrIiBhbmQgImRtYV9jayI7Ci0gLSBwaHlzIDogc2VlIHVzYi1o
Y2QudHh0IGluIHRoZSBjdXJyZW50IGRpcmVjdG9yeQorIC0gcGh5cyA6IHNlZSB1c2ItaGNkLnlh
bWwgaW4gdGhlIGN1cnJlbnQgZGlyZWN0b3J5CiAgLSBkcl9tb2RlIDogc2hvdWxkIGJlIG9uZSBv
ZiAiaG9zdCIsICJwZXJpcGhlcmFsIiBvciAib3RnIiwKIAlyZWZlciB0byB1c2IvZ2VuZXJpYy50
eHQKCkBAIC02MCw3ICs2MCw3IEBAIE9wdGlvbmFsIHByb3BlcnRpZXM6CiAgLSBtZWRpYXRlayx1
M3AtZGlzLW1zayA6IG1hc2sgdG8gZGlzYWJsZSB1M3BvcnRzLCBiaXQwIGZvciB1M3BvcnQwLAog
CWJpdDEgZm9yIHUzcG9ydDEsIC4uLiBldGM7CgotYWRkaXRpb25hbGx5IHRoZSBwcm9wZXJ0aWVz
IGZyb20gdXNiLWhjZC50eHQgKGluIHRoZSBjdXJyZW50IGRpcmVjdG9yeSkgYXJlCithZGRpdGlv
bmFsbHkgdGhlIHByb3BlcnRpZXMgZnJvbSB1c2ItaGNkLnlhbWwgKGluIHRoZSBjdXJyZW50IGRp
cmVjdG9yeSkgYXJlCiBzdXBwb3J0ZWQuCgogU3ViLW5vZGVzOgpkaWZmIC0tZ2l0IGEvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3VzYi91c2ItdWhjaS50eHQgYi9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdXNiL3VzYi11aGNpLnR4dAppbmRleCBjYzJlNmY3ZDYw
MmUuLmQxNzAyZWIyYzhiZCAxMDA2NDQKLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL3VzYi91c2ItdWhjaS50eHQKKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL3VzYi91c2ItdWhjaS50eHQKQEAgLTYsNyArNiw3IEBAIFJlcXVpcmVkIHByb3BlcnRp
ZXM6CiAtIHJlZyA6IFNob3VsZCBjb250YWluIDEgcmVnaXN0ZXIgcmFuZ2VzKGFkZHJlc3MgYW5k
IGxlbmd0aCkKIC0gaW50ZXJydXB0cyA6IFVIQ0kgY29udHJvbGxlciBpbnRlcnJ1cHQKCi1hZGRp
dGlvbmFsbHkgdGhlIHByb3BlcnRpZXMgZnJvbSB1c2ItaGNkLnR4dCAoaW4gdGhlIGN1cnJlbnQg
ZGlyZWN0b3J5KSBhcmUKK2FkZGl0aW9uYWxseSB0aGUgcHJvcGVydGllcyBmcm9tIHVzYi1oY2Qu
eWFtbCAoaW4gdGhlIGN1cnJlbnQgZGlyZWN0b3J5KSBhcmUKIHN1cHBvcnRlZC4KCiBFeGFtcGxl
OgpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3VzYi91c2It
eGhjaS50eHQgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdXNiL3VzYi14aGNp
LnR4dAppbmRleCA5NzQwMGU4Zjg2MDUuLmI0OWI4MTk1NzFmOSAxMDA2NDQKLS0tIGEvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3VzYi91c2IteGhjaS50eHQKKysrIGIvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3VzYi91c2IteGhjaS50eHQKQEAgLTQxLDkgKzQx
LDkgQEAgT3B0aW9uYWwgcHJvcGVydGllczoKICAgLSB1c2IzLWxwbS1jYXBhYmxlOiBkZXRlcm1p
bmVzIGlmIHBsYXRmb3JtIGlzIFVTQjMgTFBNIGNhcGFibGUKICAgLSBxdWlyay1icm9rZW4tcG9y
dC1wZWQ6IHNldCBpZiB0aGUgY29udHJvbGxlciBoYXMgYnJva2VuIHBvcnQgZGlzYWJsZSBtZWNo
YW5pc20KICAgLSBpbW9kLWludGVydmFsLW5zOiBkZWZhdWx0IGludGVycnVwdCBtb2RlcmF0aW9u
IGludGVydmFsIGlzIDUwMDBucwotICAtIHBoeXMgOiBzZWUgdXNiLWhjZC50eHQgaW4gdGhlIGN1
cnJlbnQgZGlyZWN0b3J5CisgIC0gcGh5cyA6IHNlZSB1c2ItaGNkLnlhbWwgaW4gdGhlIGN1cnJl
bnQgZGlyZWN0b3J5CgotYWRkaXRpb25hbGx5IHRoZSBwcm9wZXJ0aWVzIGZyb20gdXNiLWhjZC50
eHQgKGluIHRoZSBjdXJyZW50IGRpcmVjdG9yeSkgYXJlCithZGRpdGlvbmFsbHkgdGhlIHByb3Bl
cnRpZXMgZnJvbSB1c2ItaGNkLnlhbWwgKGluIHRoZSBjdXJyZW50IGRpcmVjdG9yeSkgYXJlCiBz
dXBwb3J0ZWQuCgoKLS0KMi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
