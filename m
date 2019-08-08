Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5D6886793
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 19:00:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nxqsetY/tuYaGoL95TsVF+vu6TzpYkfHgF56vZGwXr4=; b=reC7YsAMiyFCl6
	nuSsu8TMt8H+xAn0CKG47NyX1Fv466OsIPhHrJmq2abppvQ/K0fHWEjqX8HvZVB4uqRnua98EAVWN
	GCRYzpF/W9WQU4JG5AnKWQvUA3gXWPn1ZgHd1rYwhIr5zRHnv31dOz1DQQg0betB45E8swr591/FF
	aiAvbcbfEOp5MphI/L2dI/fr31yRl/raXo+6Or7uIwtSjTc2OT2DgetU5FDACDdbLqejE7JSuvB2c
	0s5b609epjxTPxzScNKqZ63A5Di9uIO+VLuWCH3eZuNY0vG1l5TWP6XQSte9D+pDB/OaEytAvARDm
	7D06//yh+q5wpfygW2NQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvllm-0007Vy-9b; Thu, 08 Aug 2019 17:00:06 +0000
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvlla-0007VS-P0
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 16:59:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1565283589;
 bh=5ZWBx0UX3/ng437SRV+3mNmqF8CMD79gPpuEkR2AKbM=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=YQryhn1rG/9+XBSxrotpKRjZbmXGxaRp4TLF/p8C8cSX4QZQgfGvAdrqTRjCZ/ryl
 mYYSAEIY6404chQLg2HUs1Sx3EQGHbAl5CjGu5Iv1JrE8O83MNRlhicF2hdRLnJYH5
 IDS+XoWsSJ5XGRtOqgI4OAEZYpPgoJ+NIEUXPsc4=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from longitude ([109.90.233.87]) by mail.gmx.com (mrgmx001
 [212.227.17.190]) with ESMTPSA (Nemesis) id 0MSuMn-1hm6c41Hbp-00Rmeb; Thu, 08
 Aug 2019 18:59:49 +0200
From: =?UTF-8?q?Jonathan=20Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>
To: linux-doc@vger.kernel.org
Subject: [PATCH 1/2] Documentation/arm/sa1100: Remove some obsolete
 documentation
Date: Thu,  8 Aug 2019 18:58:55 +0200
Message-Id: <20190808165929.16946-1-j.neuschaefer@gmx.net>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:YsvMSYO6/qXktRlP9DkXrpJX0pfkQbk2oEw7BE1e4pc9QCCUx/c
 nmMcYWdfredKjRRQhlfvj1UMPfJcAzXVu0HztDnXtGBIwoVTqyBmQ+4A5L6sLk2Rydqdx7z
 g6WKk0pisksCZtA+AfjuLf7eirU1mFgNt+VuXqitqHhX6pXoxvsg93sI8ykynUJfoRnCWYq
 1LaHgYMce1mnrxyypxSDg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:nTIuwVpECOU=:ixZtgS9B6mW7eEeSqo/XrF
 yucycVxNAKQW1ED/k6QLCGQG78Iit+AT0jf+8Ziwg9Vt6pA51lmu6fxHYzviK0/Z7sZzaaBaA
 s3teP3u7Le96b6PPDtA3k1edYOgJorAPRGKz+Iu4YC/XMVnmB8dZsY98FRnJVK6n0PyLa40H0
 NnTsd8bDucELULVkCxq3PSIt1Xtz3Ggu/zW+1YXP8PlXVtzSlT1GCiLIYVzQx6RHN8yonHsF3
 5Z0pfmDW+d7r/FJ+LgSHw5cg2bWRUNJqVLaOLBzmV0gIxcJ9M8PHngrjEhdzlXqvSbSG4LHpR
 B/dPtMdHbmht5palWHT+Z2jnltpEeJkmW0f19PRdLh91F032yvzbbGA3uVFjpw9Evr2/51H2J
 P0g7LsVTjiyKqmM3dJ9DAs04VtPfdkpcQYPV+XlNT9rg1tABDUx/CtL/NXNBESCyDAPFh1kiJ
 AgyRo1fVgYKeJ2SQmH6RW0ZLVAZqAmkJEXQV9kus15fLVNM8E3iDC5Qjp4wH34l4xj8SpWoNx
 fMFjmuFRGkL4UPnd9WPkcqsmauFw9cRPiZs76g+LD76Hog23GUVbUQnArqqysRl07O7LiAnPM
 h4wEFH9jTEoKTN83YEOL8kXfxtKccgN8WjM4OiL4xhmuH6nxJUPGDZFyQjTGVX+Sy7SEYaoxH
 brmeDgO757E1/aK8dMw3Be9GYA8ggsg3tUd++pyfBtz/eUvVHr0F+2ThAY9IUTRQ8BZNAvyH/
 00IKibb5nw4gcIo1Zwoyfg4K6g6xrteQKEnDe+n++SiQW7VHEqOPapplP3wDRSHiYRVkNJLMa
 fseEnmPI/Quo0j5xQGaUkAXrtHrNjme9nImQUQV1gvxcjTdaZBVBlvA4M2HS4rjfRbJFwVQfq
 VnYXuDXvVlhXvzTAuRg1sjxLfrIp98VslyYVe/w89T9knGY83SQWeG+Rt31a8luopNFLcw7Li
 OKmE77f07a5+XlS0HiiWvGXQSRcUqS6vnUNg324Br4SsFFSxSdgM5ioBC1OHd1q6SC+GuaWF9
 STYZv80gCo6UAklY8cm9hTQmyP5esnPnbxssM4hJe336JUfWhGydJ4c/v4Xx0BrZTuWt1PwTN
 L5PrDgt+f4bElf4L/qLIrHuYJSsSaCh2TTla7QZrLVVxnF8DeG2RdyRb2TOaJPa9Ro31IUOR6
 FHTBo=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_095955_254943_B344954F 
X-CRM114-Status: GOOD (  22.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (j.neuschaefer[at]gmx.net)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 linux-kernel@vger.kernel.org,
 =?UTF-8?q?Jonathan=20Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>,
 linux-arm-kernel@lists.infradead.org, Jonathan Corbet <corbet@lwn.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIHN1cHBvcnQgZm9yIHRoZSBmb2xsb3dpbmcgYm9hcmRzLCBhbW9uZyBvdGhlcnMsIHdhcyBy
ZW1vdmVkIGluIDIwMDQKd2l0aCBjb21taXQgIltBUk1dIFJlbW92ZSBicm9rZW4gU0ExMTAwIG1h
Y2hpbmUgc3VwcG9ydC4iOgoKLSBBRFMgQml0c3kKLSBCcnV0dXMKLSBGcmVlYmlyZAotIEFEUyBH
cmFwaGljc0NsaWVudCBQbHVzCi0gQURTIEdyYXBoaWNzTWFzdGVyCi0gSMO2ZnQgJiBXZXNzZWwg
V2VicGFuZWwKLSBDb21wYXEgSXRzeQotIG5hbm9FbmdpbmUKLSBQYW5nb2xpbgotIFBMRUIKLSBZ
b3B5CgpUaWZvbiBzdXBwb3J0IGhhcyBiZWVuIHJlbW92ZWQgaW4gMi40LjMuMy4KClNpZ25lZC1v
ZmYtYnk6IEpvbmF0aGFuIE5ldXNjaMOkZmVyIDxqLm5ldXNjaGFlZmVyQGdteC5uZXQ+Ci0tLQog
RG9jdW1lbnRhdGlvbi9hcm0vc2ExMTAwL2Fkc2JpdHN5LnJzdCAgICAgICB8ICA1MSAtLS0tLS0t
LS0tCiBEb2N1bWVudGF0aW9uL2FybS9zYTExMDAvYnJ1dHVzLnJzdCAgICAgICAgIHwgIDY5IC0t
LS0tLS0tLS0tLS0KIERvY3VtZW50YXRpb24vYXJtL3NhMTEwMC9mcmVlYmlyZC5yc3QgICAgICAg
fCAgMjUgLS0tLS0KIERvY3VtZW50YXRpb24vYXJtL3NhMTEwMC9ncmFwaGljc2NsaWVudC5yc3Qg
fCAxMDIgLS0tLS0tLS0tLS0tLS0tLS0tLS0KIERvY3VtZW50YXRpb24vYXJtL3NhMTEwMC9ncmFw
aGljc21hc3Rlci5yc3QgfCAgNjAgLS0tLS0tLS0tLS0tCiBEb2N1bWVudGF0aW9uL2FybS9zYTEx
MDAvaHV3X3dlYnBhbmVsLnJzdCAgIHwgIDIxIC0tLS0KIERvY3VtZW50YXRpb24vYXJtL3NhMTEw
MC9pbmRleC5yc3QgICAgICAgICAgfCAgMTIgLS0tCiBEb2N1bWVudGF0aW9uL2FybS9zYTExMDAv
aXRzeS5yc3QgICAgICAgICAgIHwgIDQ3IC0tLS0tLS0tLQogRG9jdW1lbnRhdGlvbi9hcm0vc2Ex
MTAwL25hbm9lbmdpbmUucnN0ICAgICB8ICAxMSAtLS0KIERvY3VtZW50YXRpb24vYXJtL3NhMTEw
MC9wYW5nb2xpbi5yc3QgICAgICAgfCAgMjkgLS0tLS0tCiBEb2N1bWVudGF0aW9uL2FybS9zYTEx
MDAvcGxlYi5yc3QgICAgICAgICAgIHwgIDEzIC0tLQogRG9jdW1lbnRhdGlvbi9hcm0vc2ExMTAw
L3RpZm9uLnJzdCAgICAgICAgICB8ICAgNyAtLQogRG9jdW1lbnRhdGlvbi9hcm0vc2ExMTAwL3lv
cHkucnN0ICAgICAgICAgICB8ICAgNSAtCiAxMyBmaWxlcyBjaGFuZ2VkLCA0NTIgZGVsZXRpb25z
KC0pCiBkZWxldGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9hcm0vc2ExMTAwL2Fkc2JpdHN5
LnJzdAogZGVsZXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vYXJtL3NhMTEwMC9icnV0dXMu
cnN0CiBkZWxldGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9hcm0vc2ExMTAwL2ZyZWViaXJk
LnJzdAogZGVsZXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vYXJtL3NhMTEwMC9ncmFwaGlj
c2NsaWVudC5yc3QKIGRlbGV0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2FybS9zYTExMDAv
Z3JhcGhpY3NtYXN0ZXIucnN0CiBkZWxldGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9hcm0v
c2ExMTAwL2h1d193ZWJwYW5lbC5yc3QKIGRlbGV0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9u
L2FybS9zYTExMDAvaXRzeS5yc3QKIGRlbGV0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2Fy
bS9zYTExMDAvbmFub2VuZ2luZS5yc3QKIGRlbGV0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9u
L2FybS9zYTExMDAvcGFuZ29saW4ucnN0CiBkZWxldGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlv
bi9hcm0vc2ExMTAwL3BsZWIucnN0CiBkZWxldGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9h
cm0vc2ExMTAwL3RpZm9uLnJzdAogZGVsZXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vYXJt
L3NhMTEwMC95b3B5LnJzdAoKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vYXJtL3NhMTEwMC9h
ZHNiaXRzeS5yc3QgYi9Eb2N1bWVudGF0aW9uL2FybS9zYTExMDAvYWRzYml0c3kucnN0CmRlbGV0
ZWQgZmlsZSBtb2RlIDEwMDY0NAppbmRleCBjMTc5Y2IyNmI2ODIuLjAwMDAwMDAwMDAwMAotLS0g
YS9Eb2N1bWVudGF0aW9uL2FybS9zYTExMDAvYWRzYml0c3kucnN0CisrKyAvZGV2L251bGwKQEAg
LTEsNTEgKzAsMCBAQAotPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQotQURTIEJpdHN5
IFNpbmdsZSBCb2FyZCBDb21wdXRlcgotPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQot
Ci0oSXQgaXMgZGlmZmVyZW50IGZyb20gQml0c3koaVBBUSkgb2YgQ29tcGFxKQotCi1Gb3IgbW9y
ZSBkZXRhaWxzLCBjb250YWN0IEFwcGxpZWQgRGF0YSBTeXN0ZW1zIG9yIHNlZQotaHR0cDovL3d3
dy5hcHBsaWVkZGF0YS5uZXQvcHJvZHVjdHMuaHRtbAotCi1UaGUgTGludXggc3VwcG9ydCBmb3Ig
dGhpcyBwcm9kdWN0IGhhcyBiZWVuIHByb3ZpZGVkIGJ5Ci1Xb29qdW5nIEh1aCA8d2h1aEBhcHBs
aWVkZGF0YS5uZXQ+Ci0KLVVzZSAnbWFrZSBhZHNiaXRzeV9jb25maWcnIGJlZm9yZSBhbnkgJ21h
a2UgY29uZmlnJy4KLVRoaXMgd2lsbCBzZXQgdXAgZGVmYXVsdHMgZm9yIEFEUyBCaXRzeSBzdXBw
b3J0LgotCi1UaGUga2VybmVsIHpJbWFnZSBpcyBsaW5rZWQgdG8gYmUgbG9hZGVkIGFuZCBleGVj
dXRlZCBhdCAweGMwNDAwMDAwLgotCi1MaW51eCBjYW4gIGJlIHVzZWQgd2l0aCB0aGUgQURTIEJv
b3RMb2FkZXIgdGhhdCBzaGlwcyB3aXRoIHRoZQotbmV3ZXIgcmV2IGJvYXJkcy4gU2VlIHRoZWly
IGRvY3VtZW50YXRpb24gb24gaG93IHRvIGxvYWQgTGludXguCi0KLVN1cHBvcnRlZCBwZXJpcGhl
cmFscwotPT09PT09PT09PT09PT09PT09PT09Ci0KLS0gU0ExMTAwIExDRCBmcmFtZSBidWZmZXIg
KDgvMTZicHAuLi5zb3J0IG9mKQotLSBTQTExMTEgVVNCIE1hc3RlcgotLSBTQTExMDAgc2VyaWFs
IHBvcnQKLS0gcGNtY2lhLCBjb21wYWN0IGZsYXNoCi0tIHRvdWNoc2NyZWVuKHVjYjEyMDApCi0t
IGNvbnNvbGUgb24gTENEIHNjcmVlbgotLSBzZXJpYWwgcG9ydHMgKHR0eVNbMC0yXSkKLSAgLSB0
dHlTMCBpcyBkZWZhdWx0IGZvciBzZXJpYWwgY29uc29sZQotCi1UbyBkbwotPT09PT0KLQotLSBl
dmVyeXRoaW5nIGVsc2UhICA6LSkKLQotTm90ZXMKLT09PT09Ci0KLS0gVGhlIGZsYXNoIG9uIGJv
YXJkIGlzIGRpdmlkZWQgaW50byAzIHBhcnRpdGlvbnMuCi0gIFlvdSBzaG91bGQgYmUgY2FyZWZ1
bCB0byB1c2UgZmxhc2ggb24gYm9hcmQuCi0gIEl0cyBwYXJ0aXRpb24gaXMgZGlmZmVyZW50IGZy
b20gR3JhcGhpY3NDbGllbnQgUGx1cyBhbmQgR3JhcGhpY3NNYXN0ZXIKLQotLSAxNmJwcCBtb2Rl
IHJlcXVpcmVzIGEgZGlmZmVyZW50IGNhYmxlIHRoYW4gd2hhdCBzaGlwcyB3aXRoIHRoZSBib2Fy
ZC4KLSAgQ29udGFjdCBBRFMgb3IgbG9vayB0aHJvdWdoIHRoZSBtYW51YWwgdG8gd2lyZSB5b3Vy
IG93bi4gQ3VycmVudGx5LAotICBpZiB5b3UgY29tcGlsZSB3aXRoIDE2Yml0IG1vZGUgc3VwcG9y
dCBhbmQgc3dpdGNoIGludG8gYSBsb3dlciBicHAKLSAgbW9kZSwgdGhlIHRpbWluZyBpcyBvZmYg
c28gdGhlIGltYWdlIGlzIGNvcnJ1cHRlZC4gIFRoaXMgd2lsbCBiZQotICBmaXhlZCBzb29uLgot
Ci1BbnkgY29udHJpYnV0aW9uIGNhbiBiZSBzZW50IHRvIG5pY29AZmx1eG5pYy5uZXQgYW5kIHdp
bGwgYmUgZ3JlYXRseSB3ZWxjb21lIQpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9hcm0vc2Ex
MTAwL2JydXR1cy5yc3QgYi9Eb2N1bWVudGF0aW9uL2FybS9zYTExMDAvYnJ1dHVzLnJzdApkZWxl
dGVkIGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggZTFhMjNiZWU2ZDQ0Li4wMDAwMDAwMDAwMDAKLS0t
IGEvRG9jdW1lbnRhdGlvbi9hcm0vc2ExMTAwL2JydXR1cy5yc3QKKysrIC9kZXYvbnVsbApAQCAt
MSw2OSArMCwwIEBACi09PT09PT0KLUJydXR1cwotPT09PT09Ci0KLUJydXR1cyBpcyBhbiBldmFs
dWF0aW9uIHBsYXRmb3JtIGZvciB0aGUgU0ExMTAwIG1hbnVmYWN0dXJlZCBieSBJbnRlbC4KLUZv
ciBtb3JlIGRldGFpbHMsIHNlZToKLQotaHR0cDovL2RldmVsb3Blci5pbnRlbC5jb20KLQotVG8g
Y29tcGlsZSBmb3IgQnJ1dHVzLCB5b3UgbXVzdCBpc3N1ZSB0aGUgZm9sbG93aW5nIGNvbW1hbmRz
OjoKLQotCW1ha2UgYnJ1dHVzX2NvbmZpZwotCW1ha2UgY29uZmlnCi0JW2FjY2VwdCBhbGwgdGhl
IGRlZmF1bHRzXQotCW1ha2UgekltYWdlCi0KLVRoZSByZXN1bHRpbmcga2VybmVsIHdpbGwgZW5k
IHVwIGluIGxpbnV4L2FyY2gvYXJtL2Jvb3QvekltYWdlLiAgVGhpcyBmaWxlCi1tdXN0IGJlIGxv
YWRlZCBhdCAweGMwMDA4MDAwIGluIEJydXR1cydzIG1lbW9yeSBhbmQgZXhlY3V0aW9uIHN0YXJ0
ZWQgYXQKLTB4YzAwMDgwMDAgYXMgd2VsbCB3aXRoIHRoZSB2YWx1ZSBvZiByZWdpc3RlcnMgcjAg
PSAwIGFuZCByMSA9IDE2IHVwb24KLWVudHJ5LgotCi1CdXQgcHJpb3IgdG8gZXhlY3V0ZSB0aGUg
a2VybmVsLCBhIHJhbWRpc2sgaW1hZ2UgbXVzdCBhbHNvIGJlIGxvYWRlZCBpbgotbWVtb3J5LiAg
VXNlIG1lbW9yeSBhZGRyZXNzIDB4ZDgwMDAwMDAgZm9yIHRoaXMuICBOb3RlIHRoYXQgdGhlIGZp
bGUKLWNvbnRhaW5pbmcgdGhlIChjb21wcmVzc2VkKSByYW1kaXNrIGltYWdlIG11c3Qgbm90IGV4
Y2VlZCA0IE1CLgotCi1UeXBpY2FsbHksIHlvdSdsbCBuZWVkIGFuZ2VsYm9vdCB0byBsb2FkIHRo
ZSBrZXJuZWwuCi1UaGUgZm9sbG93aW5nIGFuZ2VsYm9vdC5vcHQgZmlsZSBzaG91bGQgYmUgdXNl
ZDo6Ci0KLQliYXNlIDB4YzAwMDgwMDAKLQllbnRyeSAweGMwMDA4MDAwCi0JcjAgMHgwMDAwMDAw
MAotCXIxIDB4MDAwMDAwMTAKLQlkZXZpY2UgL2Rldi90dHlTMAotCW9wdGlvbnMgIjk2MDAgOE4x
IgotCWJhdWQgMTE1MjAwCi0Jb3RoZXJmaWxlIHJhbWRpc2tfaW1nLmd6Ci0Jb3RoZXJiYXNlIDB4
ZDgwMDAwMDAKLQotVGhlbiBsb2FkIHRoZSBrZXJuZWwgYW5kIHJhbWRpc2sgd2l0aDo6Ci0KLQlh
bmdlbGJvb3QgLWYgYW5nZWxib290Lm9wdCB6SW1hZ2UKLQotVGhlIGZpcnN0IEJydXR1cyBzZXJp
YWwgcG9ydCAoYXNzdW1lZCB0byBiZSBsaW5rZWQgdG8gL2Rldi90dHlTMCBvbiB5b3VyCi1ob3N0
IFBDKSBpcyB1c2VkIGJ5IGFuZ2VsIHRvIGxvYWQgdGhlIGtlcm5lbCBhbmQgcmFtZGlzayBpbWFn
ZS4gVGhlIHNlcmlhbAotY29uc29sZSBpcyBwcm92aWRlZCB0aHJvdWdoIHRoZSBzZWNvbmQgQnJ1
dHVzIHNlcmlhbCBwb3J0LiBUbyBhY2Nlc3MgaXQsCi15b3UgbWF5IHVzZSBtaW5pY29tIGNvbmZp
Z3VyZWQgd2l0aCAvZGV2L3R0eVMxLCA5NjAwIGJhdWQsIDhOMSwgbm8gZmxvdwotY29udHJvbC4K
LQotQ3VycmVudGx5IHN1cHBvcnRlZAotPT09PT09PT09PT09PT09PT09PQotCi0JLSBSUzIzMiBz
ZXJpYWwgcG9ydHMKLQktIGF1ZGlvIG91dHB1dAotCS0gTENEIHNjcmVlbgotCS0ga2V5Ym9hcmQK
LQotVGhlIGFjdHVhbCBCcnV0dXMgc3VwcG9ydCBtYXkgbm90IGJlIGNvbXBsZXRlIHdpdGhvdXQg
ZXh0cmEgcGF0Y2hlcy4KLUlmIHN1Y2ggcGF0Y2hlcyBleGlzdCwgdGhleSBzaG91bGQgYmUgZm91
bmQgZnJvbQotZnRwLm5ldHdpbmRlci5vcmcvdXNlcnMvbi9uaWNvLgotCi1BIGZ1bGwgUENNQ0lB
IHN1cHBvcnQgaXMgc3RpbGwgbWlzc2luZywgYWx0aG91Z2ggaXQncyBwb3NzaWJsZSB0byBoYWNr
Ci1zb21lIGRyaXZlcnMgaW4gb3JkZXIgdG8gZHJpdmUgYWxyZWFkeSBpbnNlcnRlZCBjYXJkcyBh
dCBib290IHRpbWUgd2l0aAotbGl0dGxlIG1vZGlmaWNhdGlvbnMuCi0KLUFueSBjb250cmlidXRp
b24gaXMgd2VsY29tZS4KLQotUGxlYXNlIHNlbmQgcGF0Y2hlcyB0byBuaWNvQGZsdXhuaWMubmV0
Ci0KLUhhdmUgRnVuICEKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vYXJtL3NhMTEwMC9mcmVl
YmlyZC5yc3QgYi9Eb2N1bWVudGF0aW9uL2FybS9zYTExMDAvZnJlZWJpcmQucnN0CmRlbGV0ZWQg
ZmlsZSBtb2RlIDEwMDY0NAppbmRleCA4MTA0M2QwYzZkNjQuLjAwMDAwMDAwMDAwMAotLS0gYS9E
b2N1bWVudGF0aW9uL2FybS9zYTExMDAvZnJlZWJpcmQucnN0CisrKyAvZGV2L251bGwKQEAgLTEs
MjUgKzAsMCBAQAotPT09PT09PT0KLUZyZWViaXJkCi09PT09PT09PQotCi1GcmVlYmlyZC0xLjEg
aXMgcHJvZHVjZWQgYnkgTGVnZW5kKEMpLCBJbmMuCi1gaHR0cDovL3dlYi5hcmNoaXZlLm9yZy93
ZWIvKi9odHRwOi8vd3d3LmxlZ2VuZC5jb20uY25gCi1hbmQgc29mdHdhcmUvbGludXggbWFpbnRh
aW5lZCBieSBDb3ZlbnRpdmUoQyksIEluYy4KLShodHRwOi8vd3d3LmNvdmVudGl2ZS5jb20pCi0K
LUJhc2VkIG9uIHRoZSBOaWNvbGFzJ3Mgc3Ryb25nYXJtIGtlcm5lbCB0cmVlLgotCi1NYWludGFp
bmVyOgotCi1DaGVzdGVyIEt1bwotCS0gPGNoZXN0ZXJAY292ZW50aXZlLmNvbT4KLQktIDxjaGVz
dGVyQGxpbnV4Lm9yZy50dz4KLQotQXV0aG9yOgotCi0tIFRpbSB3dSA8dGltd3VAY292ZW50aXZl
LmNvbT4KLS0gQ0lIIDxjaWhAY292ZW50aXZlLmNvbT4KLS0gRXJpYyBQZW5nIDxlcmljcGVuZ0Bj
b3ZlbnRpdmUuY29tPgotLSBKZWZmIExlZSA8amVmZl9sZWVAY292ZW50aXZlLmNvbT4KLS0gQWxs
ZW4gQ2hlbmcKLS0gVG9ueSBMaXUgPHRvbnlsaXVAY292ZW50aXZlLmNvbT4KZGlmZiAtLWdpdCBh
L0RvY3VtZW50YXRpb24vYXJtL3NhMTEwMC9ncmFwaGljc2NsaWVudC5yc3QgYi9Eb2N1bWVudGF0
aW9uL2FybS9zYTExMDAvZ3JhcGhpY3NjbGllbnQucnN0CmRlbGV0ZWQgZmlsZSBtb2RlIDEwMDY0
NAppbmRleCBhNzNkNjFjM2NlOTEuLjAwMDAwMDAwMDAwMAotLS0gYS9Eb2N1bWVudGF0aW9uL2Fy
bS9zYTExMDAvZ3JhcGhpY3NjbGllbnQucnN0CisrKyAvZGV2L251bGwKQEAgLTEsMTAyICswLDAg
QEAKLT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQotQURTIEdy
YXBoaWNzQ2xpZW50IFBsdXMgU2luZ2xlIEJvYXJkIENvbXB1dGVyCi09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0KLQotRm9yIG1vcmUgZGV0YWlscywgY29udGFj
dCBBcHBsaWVkIERhdGEgU3lzdGVtcyBvciBzZWUKLWh0dHA6Ly93d3cuYXBwbGllZGRhdGEubmV0
L3Byb2R1Y3RzLmh0bWwKLQotVGhlIG9yaWdpbmFsIExpbnV4IHN1cHBvcnQgZm9yIHRoaXMgcHJv
ZHVjdCBoYXMgYmVlbiBwcm92aWRlZCBieQotTmljb2xhcyBQaXRyZSA8bmljb0BmbHV4bmljLm5l
dD4uIENvbnRpbnVlZCBkZXZlbG9wbWVudCB3b3JrIGJ5Ci1Xb29qdW5nIEh1aCA8d2h1aEBhcHBs
aWVkZGF0YS5uZXQ+Ci0KLUl0J3MgY3VycmVudGx5IHBvc3NpYmxlIHRvIG1vdW50IGEgcm9vdCBm
aWxlc3lzdGVtIHZpYSBORlMgcHJvdmlkaW5nIGEKLWNvbXBsZXRlIExpbnV4IGVudmlyb25tZW50
LiAgT3RoZXJ3aXNlIGEgcmFtZGlzayBpbWFnZSBtYXkgYmUgdXNlZC4gIFRoZQotYm9hcmQgc3Vw
cG9ydHMgTVREL0pGRlMsIHNvIHlvdSBjb3VsZCBhbHNvIG1vdW50IHNvbWV0aGluZyBvbiB0aGVy
ZS4KLQotVXNlICdtYWtlIGdyYXBoaWNzY2xpZW50X2NvbmZpZycgYmVmb3JlIGFueSAnbWFrZSBj
b25maWcnLiAgVGhpcyB3aWxsIHNldCB1cAotZGVmYXVsdHMgZm9yIEdyYXBoaWNzQ2xpZW50IFBs
dXMgc3VwcG9ydC4KLQotVGhlIGtlcm5lbCB6SW1hZ2UgaXMgbGlua2VkIHRvIGJlIGxvYWRlZCBh
bmQgZXhlY3V0ZWQgYXQgMHhjMDIwMDAwMC4KLUFsc28gdGhlIGZvbGxvd2luZyByZWdpc3RlcnMg
c2hvdWxkIGhhdmUgdGhlIHNwZWNpZmllZCB2YWx1ZXMgdXBvbiBlbnRyeTo6Ci0KLQlyMCA9IDAK
LQlyMSA9IDI5CSh0aGlzIGlzIHRoZSBHcmFwaGljc0NsaWVudCBhcmNoaXRlY3R1cmUgbnVtYmVy
KQotCi1MaW51eCBjYW4gIGJlIHVzZWQgd2l0aCB0aGUgQURTIEJvb3RMb2FkZXIgdGhhdCBzaGlw
cyB3aXRoIHRoZQotbmV3ZXIgcmV2IGJvYXJkcy4gU2VlIHRoZWlyIGRvY3VtZW50YXRpb24gb24g
aG93IHRvIGxvYWQgTGludXguCi1BbmdlbCBpcyBub3QgYXZhaWxhYmxlIGZvciB0aGUgR3JhcGhp
Y3NDbGllbnQgUGx1cyBBRkFJSy4KLQotVGhlcmUgaXMgYSAgYm9hcmQga25vd24gYXMganVzdCB0
aGUgR3JhcGhpY3NDbGllbnQgdGhhdCBBRFMgdXNlZCB0bwotcHJvZHVjZSBidXQgaGFzIGVuZCBv
ZiBsaWZlZC4gVGhpcyBjb2RlIHdpbGwgbm90IHdvcmsgb24gdGhlIG9sZGVyCi1ib2FyZCB3aXRo
IHRoZSBBRFMgYm9vdGxvYWRlciwgYnV0IHNob3VsZCBzdGlsbCB3b3JrIHdpdGggQW5nZWwsCi1h
cyBvdXRsaW5lZCBiZWxvdy4gIEluIGFueSBjYXNlLCBpZiB5b3UncmUgcGxhbm5pbmcgb24gZGVw
bG95aW5nCi1zb21ldGhpbmcgZW4gbWFzc2UsIHlvdSBzaG91bGQgcHJvYmFibHkgZ2V0IHRoZSBu
ZXdlciBib2FyZC4KLQotSWYgdXNpbmcgQW5nZWwgb24gdGhlIG9sZGVyIGJvYXJkcywgaGVyZSBp
cyBhIHR5cGljYWwgYW5nZWwub3B0IG9wdGlvbiBmaWxlCi1pZiB0aGUga2VybmVsIGlzIGxvYWRl
ZCB0aHJvdWdoIHRoZSBBbmdlbCBEZWJ1ZyBNb25pdG9yOjoKLQotCWJhc2UgMHhjMDIwMDAwMAot
CWVudHJ5IDB4YzAyMDAwMDAKLQlyMCAweDAwMDAwMDAwCi0JcjEgMHgwMDAwMDAxZAotCWRldmlj
ZSAvZGV2L3R0eVMxCi0Jb3B0aW9ucyAiMzg0MDAgOE4xIgotCWJhdWQgMTE1MjAwCi0JI290aGVy
ZmlsZSByYW1kaXNrLmd6Ci0JI290aGVyYmFzZSAweGMwODAwMDAwCi0JZXhlYyBtaW5pY29tCi0K
LVRoZW4gdGhlIGtlcm5lbCAoYW5kIHJhbWRpc2sgaWYgb3RoZXJmaWxlL290aGVyYmFzZSBsaW5l
cyBhYm92ZSBhcmUKLXVuY29tbWVudGVkKSB3b3VsZCBiZSBsb2FkZWQgd2l0aDo6Ci0KLQlhbmdl
bGJvb3QgLWYgYW5nZWxib290Lm9wdCB6SW1hZ2UKLQotSGVyZSBpdCBpcyBhc3N1bWVkIHRoYXQg
dGhlIGJvYXJkIGlzIGNvbm5lY3RlZCB0byB0dHlTMSBvbiB5b3VyIFBDCi1hbmQgdGhhdCBtaW5p
Y29tIGlzIHByZWNvbmZpZ3VyZWQgd2l0aCAvZGV2L3R0eVMxLCAzODQwMCBiYXVkLCA4TjEsIG5v
IGZsb3cKLWNvbnRyb2wgYnkgZGVmYXVsdC4KLQotSWYgYW55IG90aGVyIGJvb3Rsb2FkZXIgaXMg
dXNlZCwgZW5zdXJlIGl0IGFjY29tcGxpc2ggdGhlIHNhbWUsIGVzcGVjaWFsbHkKLWZvciByMC9y
MSByZWdpc3RlciB2YWx1ZXMgYmVmb3JlIGp1bXBpbmcgaW50byB0aGUga2VybmVsLgotCi0KLVN1
cHBvcnRlZCBwZXJpcGhlcmFscwotPT09PT09PT09PT09PT09PT09PT09Ci0KLS0gU0ExMTAwIExD
RCBmcmFtZSBidWZmZXIgKDgvMTZicHAuLi5zb3J0IG9mKQotLSBvbi1ib2FyZCBTTUMgOTJDOTYg
ZXRoZXJuZXQgTklDCi0tIFNBMTEwMCBzZXJpYWwgcG9ydAotLSBmbGFzaCBtZW1vcnkgYWNjZXNz
IChNVEQvSkZGUykKLS0gcGNtY2lhCi0tIHRvdWNoc2NyZWVuKHVjYjEyMDApCi0tIHBzLzIga2V5
Ym9hcmQKLS0gY29uc29sZSBvbiBMQ0Qgc2NyZWVuCi0tIHNlcmlhbCBwb3J0cyAodHR5U1swLTJd
KQotICAtIHR0eVMwIGlzIGRlZmF1bHQgZm9yIHNlcmlhbCBjb25zb2xlCi0tIFNtYXJ0IEkvTyAo
QURDLCBrZXlwYWQsIGRpZ2l0YWwgaW5wdXRzLCBldGMpCi0gIFNlZSBodHRwOi8vd3d3LmV1cm90
ZWNoLWluYy5jb20vbGludXgtc2JjLmFzcCBmb3IgSU9DVEwgZG9jdW1lbnRhdGlvbgotICBhbmQg
ZXhhbXBsZSB1c2VyIHNwYWNlIGNvZGUuIHBzLzIga2V5YmQgaXMgbXVsdGlwbGV4ZWQgdGhyb3Vn
aCB0aGlzIGRyaXZlcgotCi1UbyBkbwotPT09PT0KLQotLSBVQ0IxMjAwIGF1ZGlvIHdpdGggbmV3
IHVjYl9nZW5lcmljIGxheWVyCi0tIGV2ZXJ5dGhpbmcgZWxzZSEgIDotKQotCi1Ob3RlcwotPT09
PT0KLQotLSBUaGUgZmxhc2ggb24gYm9hcmQgaXMgZGl2aWRlZCBpbnRvIDMgcGFydGl0aW9ucy4g
IG10ZDAgaXMgd2hlcmUKLSAgdGhlIEFEUyBib290IFJPTSBhbmQgekltYWdlIGlzIHN0b3JlZC4g
IEl0J3MgYmVlbiBtYXJrZWQgYXMKLSAgcmVhZC1vbmx5IHRvIGtlZXAgeW91IGZyb20gYmxhc3Rp
bmcgb3ZlciB0aGUgYm9vdGxvYWRlci4gOikgIG10ZDEgaXMKLSAgZm9yIHRoZSByYW1kaXNrLmd6
IGltYWdlLiAgbXRkMiBpcyB1c2VyIGZsYXNoIHNwYWNlIGFuZCBjYW4gYmUKLSAgdXRpbGl6ZWQg
Zm9yIGVpdGhlciBKRkZTIG9yIGlmIHlvdSdyZSBmZWVsaW5nIGNyYXp5LCBydW5uaW5nIGV4dDIK
LSAgb24gdG9wIG9mIGl0LiBJZiB5b3UncmUgbm90IHVzaW5nIHRoZSBBRFMgYm9vdGxvYWRlciwg
eW91J3JlCi0gIHdlbGNvbWUgdG8gYmxhc3Qgb3ZlciB0aGUgbXRkMSBwYXJ0aXRpb24gYWxzby4K
LQotLSAxNmJwcCBtb2RlIHJlcXVpcmVzIGEgZGlmZmVyZW50IGNhYmxlIHRoYW4gd2hhdCBzaGlw
cyB3aXRoIHRoZSBib2FyZC4KLSAgQ29udGFjdCBBRFMgb3IgbG9vayB0aHJvdWdoIHRoZSBtYW51
YWwgdG8gd2lyZSB5b3VyIG93bi4gQ3VycmVudGx5LAotICBpZiB5b3UgY29tcGlsZSB3aXRoIDE2
Yml0IG1vZGUgc3VwcG9ydCBhbmQgc3dpdGNoIGludG8gYSBsb3dlciBicHAKLSAgbW9kZSwgdGhl
IHRpbWluZyBpcyBvZmYgc28gdGhlIGltYWdlIGlzIGNvcnJ1cHRlZC4gIFRoaXMgd2lsbCBiZQot
ICBmaXhlZCBzb29uLgotCi1BbnkgY29udHJpYnV0aW9uIGNhbiBiZSBzZW50IHRvIG5pY29AZmx1
eG5pYy5uZXQgYW5kIHdpbGwgYmUgZ3JlYXRseSB3ZWxjb21lIQpkaWZmIC0tZ2l0IGEvRG9jdW1l
bnRhdGlvbi9hcm0vc2ExMTAwL2dyYXBoaWNzbWFzdGVyLnJzdCBiL0RvY3VtZW50YXRpb24vYXJt
L3NhMTEwMC9ncmFwaGljc21hc3Rlci5yc3QKZGVsZXRlZCBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4
IGUzOTg5MjUxNGYwYy4uMDAwMDAwMDAwMDAwCi0tLSBhL0RvY3VtZW50YXRpb24vYXJtL3NhMTEw
MC9ncmFwaGljc21hc3Rlci5yc3QKKysrIC9kZXYvbnVsbApAQCAtMSw2MCArMCwwIEBACi09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09Ci1BRFMgR3JhcGhpY3NNYXN0ZXIg
U2luZ2xlIEJvYXJkIENvbXB1dGVyCi09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09Ci0KLUZvciBtb3JlIGRldGFpbHMsIGNvbnRhY3QgQXBwbGllZCBEYXRhIFN5c3RlbXMg
b3Igc2VlCi1odHRwOi8vd3d3LmFwcGxpZWRkYXRhLm5ldC9wcm9kdWN0cy5odG1sCi0KLVRoZSBv
cmlnaW5hbCBMaW51eCBzdXBwb3J0IGZvciB0aGlzIHByb2R1Y3QgaGFzIGJlZW4gcHJvdmlkZWQg
YnkKLU5pY29sYXMgUGl0cmUgPG5pY29AZmx1eG5pYy5uZXQ+LiBDb250aW51ZWQgZGV2ZWxvcG1l
bnQgd29yayBieQotV29vanVuZyBIdWggPHdodWhAYXBwbGllZGRhdGEubmV0PgotCi1Vc2UgJ21h
a2UgZ3JhcGhpY3NtYXN0ZXJfY29uZmlnJyBiZWZvcmUgYW55ICdtYWtlIGNvbmZpZycuCi1UaGlz
IHdpbGwgc2V0IHVwIGRlZmF1bHRzIGZvciBHcmFwaGljc01hc3RlciBzdXBwb3J0LgotCi1UaGUg
a2VybmVsIHpJbWFnZSBpcyBsaW5rZWQgdG8gYmUgbG9hZGVkIGFuZCBleGVjdXRlZCBhdCAweGMw
NDAwMDAwLgotCi1MaW51eCBjYW4gIGJlIHVzZWQgd2l0aCB0aGUgQURTIEJvb3RMb2FkZXIgdGhh
dCBzaGlwcyB3aXRoIHRoZQotbmV3ZXIgcmV2IGJvYXJkcy4gU2VlIHRoZWlyIGRvY3VtZW50YXRp
b24gb24gaG93IHRvIGxvYWQgTGludXguCi0KLVN1cHBvcnRlZCBwZXJpcGhlcmFscwotPT09PT09
PT09PT09PT09PT09PT09Ci0KLS0gU0ExMTAwIExDRCBmcmFtZSBidWZmZXIgKDgvMTZicHAuLi5z
b3J0IG9mKQotLSBTQTExMTEgVVNCIE1hc3RlcgotLSBvbi1ib2FyZCBTTUMgOTJDOTYgZXRoZXJu
ZXQgTklDCi0tIFNBMTEwMCBzZXJpYWwgcG9ydAotLSBmbGFzaCBtZW1vcnkgYWNjZXNzIChNVEQv
SkZGUykKLS0gcGNtY2lhLCBjb21wYWN0IGZsYXNoCi0tIHRvdWNoc2NyZWVuKHVjYjEyMDApCi0t
IHBzLzIga2V5Ym9hcmQKLS0gY29uc29sZSBvbiBMQ0Qgc2NyZWVuCi0tIHNlcmlhbCBwb3J0cyAo
dHR5U1swLTJdKQotICAtIHR0eVMwIGlzIGRlZmF1bHQgZm9yIHNlcmlhbCBjb25zb2xlCi0tIFNt
YXJ0IEkvTyAoQURDLCBrZXlwYWQsIGRpZ2l0YWwgaW5wdXRzLCBldGMpCi0gIFNlZSBodHRwOi8v
d3d3LmV1cm90ZWNoLWluYy5jb20vbGludXgtc2JjLmFzcCBmb3IgSU9DVEwgZG9jdW1lbnRhdGlv
bgotICBhbmQgZXhhbXBsZSB1c2VyIHNwYWNlIGNvZGUuIHBzLzIga2V5YmQgaXMgbXVsdGlwbGV4
ZWQgdGhyb3VnaCB0aGlzIGRyaXZlcgotCi1UbyBkbwotPT09PT0KLQotLSBldmVyeXRoaW5nIGVs
c2UhICA6LSkKLQotTm90ZXMKLT09PT09Ci0KLS0gVGhlIGZsYXNoIG9uIGJvYXJkIGlzIGRpdmlk
ZWQgaW50byAzIHBhcnRpdGlvbnMuICBtdGQwIGlzIHdoZXJlCi0gIHRoZSB6SW1hZ2UgaXMgc3Rv
cmVkLiAgSXQncyBiZWVuIG1hcmtlZCBhcyByZWFkLW9ubHkgdG8ga2VlcCB5b3UKLSAgZnJvbSBi
bGFzdGluZyBvdmVyIHRoZSBib290bG9hZGVyLiA6KSAgbXRkMSBpcwotICBmb3IgdGhlIHJhbWRp
c2suZ3ogaW1hZ2UuICBtdGQyIGlzIHVzZXIgZmxhc2ggc3BhY2UgYW5kIGNhbiBiZQotICB1dGls
aXplZCBmb3IgZWl0aGVyIEpGRlMgb3IgaWYgeW91J3JlIGZlZWxpbmcgY3JhenksIHJ1bm5pbmcg
ZXh0MgotICBvbiB0b3Agb2YgaXQuIElmIHlvdSdyZSBub3QgdXNpbmcgdGhlIEFEUyBib290bG9h
ZGVyLCB5b3UncmUKLSAgd2VsY29tZSB0byBibGFzdCBvdmVyIHRoZSBtdGQxIHBhcnRpdGlvbiBh
bHNvLgotCi0tIDE2YnBwIG1vZGUgcmVxdWlyZXMgYSBkaWZmZXJlbnQgY2FibGUgdGhhbiB3aGF0
IHNoaXBzIHdpdGggdGhlIGJvYXJkLgotICBDb250YWN0IEFEUyBvciBsb29rIHRocm91Z2ggdGhl
IG1hbnVhbCB0byB3aXJlIHlvdXIgb3duLiBDdXJyZW50bHksCi0gIGlmIHlvdSBjb21waWxlIHdp
dGggMTZiaXQgbW9kZSBzdXBwb3J0IGFuZCBzd2l0Y2ggaW50byBhIGxvd2VyIGJwcAotICBtb2Rl
LCB0aGUgdGltaW5nIGlzIG9mZiBzbyB0aGUgaW1hZ2UgaXMgY29ycnVwdGVkLiAgVGhpcyB3aWxs
IGJlCi0gIGZpeGVkIHNvb24uCi0KLUFueSBjb250cmlidXRpb24gY2FuIGJlIHNlbnQgdG8gbmlj
b0BmbHV4bmljLm5ldCBhbmQgd2lsbCBiZSBncmVhdGx5IHdlbGNvbWUhCmRpZmYgLS1naXQgYS9E
b2N1bWVudGF0aW9uL2FybS9zYTExMDAvaHV3X3dlYnBhbmVsLnJzdCBiL0RvY3VtZW50YXRpb24v
YXJtL3NhMTEwMC9odXdfd2VicGFuZWwucnN0CmRlbGV0ZWQgZmlsZSBtb2RlIDEwMDY0NAppbmRl
eCAxZGM3Y2NiMTY1ZjAuLjAwMDAwMDAwMDAwMAotLS0gYS9Eb2N1bWVudGF0aW9uL2FybS9zYTEx
MDAvaHV3X3dlYnBhbmVsLnJzdAorKysgL2Rldi9udWxsCkBAIC0xLDIxICswLDAgQEAKLT09PT09
PT09PT09PT09PT09PT09PT09Ci1Ib2VmdCAmIFdlc3NlbCBXZWJwYW5lbAotPT09PT09PT09PT09
PT09PT09PT09PT0KLQotVGhlIEhVV19XRUJQQU5FTCBpcyBhIHByb2R1Y3Qgb2YgdGhlIGdlcm1h
biBjb21wYW55IEhvZWZ0ICYgV2Vzc2VsIEFHCi0KLUlmIHlvdSB3YW50IG1vcmUgaW5mb3JtYXRp
b24sIHBsZWFzZSB2aXNpdAotaHR0cDovL3d3dy5ob2VmdC13ZXNzZWwuZGUKLQotVG8gYnVpbGQg
dGhlIGtlcm5lbDo6Ci0KLQltYWtlIGh1d193ZWJwYW5lbF9jb25maWcKLQltYWtlIG9sZGNvbmZp
ZwotCVthY2NlcHQgYWxsIGRlZmF1bHRzXQotCW1ha2UgekltYWdlCi0KLU1vc3RseSBvZiB0aGUg
d29yayBpcyBkb25lIGJ5OgotUm9tYW4gSm9yZGFuICAgICAgICAgam9yQGhvZWZ0LXdlc3NlbC5k
ZQotQ2hyaXN0b3BoIFNjaHVseiAgICBzY2h1QGhvZWZ0LXdlc3NlbC5kZQotCi0yMDAwLzEyLzE4
LwpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9hcm0vc2ExMTAwL2luZGV4LnJzdCBiL0RvY3Vt
ZW50YXRpb24vYXJtL3NhMTEwMC9pbmRleC5yc3QKaW5kZXggNjhjMmEyODBhNzQ1Li5jOWFlZDQz
MjgwZmYgMTAwNjQ0Ci0tLSBhL0RvY3VtZW50YXRpb24vYXJtL3NhMTEwMC9pbmRleC5yc3QKKysr
IGIvRG9jdW1lbnRhdGlvbi9hcm0vc2ExMTAwL2luZGV4LnJzdApAQCAtNywxOSArNyw3IEBAIElu
dGVsIFN0cm9uZ0FSTSAxMTAwCiAuLiB0b2N0cmVlOjoKICAgICA6bWF4ZGVwdGg6IDEKCi0gICAg
YWRzYml0c3kKICAgICBhc3NhYmV0Ci0gICAgYnJ1dHVzCiAgICAgY2VyZgotICAgIGZyZWViaXJk
Ci0gICAgZ3JhcGhpY3NjbGllbnQKLSAgICBncmFwaGljc21hc3RlcgotICAgIGh1d193ZWJwYW5l
bAotICAgIGl0c3kKICAgICBsYXJ0Ci0gICAgbmFub2VuZ2luZQotICAgIHBhbmdvbGluCi0gICAg
cGxlYgogICAgIHNlcmlhbF91YXJ0Ci0gICAgdGlmb24KLSAgICB5b3B5CmRpZmYgLS1naXQgYS9E
b2N1bWVudGF0aW9uL2FybS9zYTExMDAvaXRzeS5yc3QgYi9Eb2N1bWVudGF0aW9uL2FybS9zYTEx
MDAvaXRzeS5yc3QKZGVsZXRlZCBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IGY0OTg5NmJhM2VmMS4u
MDAwMDAwMDAwMDAwCi0tLSBhL0RvY3VtZW50YXRpb24vYXJtL3NhMTEwMC9pdHN5LnJzdAorKysg
L2Rldi9udWxsCkBAIC0xLDQ3ICswLDAgQEAKLT09PT0KLUl0c3kKLT09PT0KLQotSXRzeSBpcyBh
IHJlc2VhcmNoIHByb2plY3QgZG9uZSBieSB0aGUgV2VzdGVybiBSZXNlYXJjaCBMYWIsIGFuZCBT
eXN0ZW1zCi1SZXNlYXJjaCBDZW50ZXIgaW4gUGFsbyBBbHRvLCBDQS4gVGhlIEl0c3kgcHJvamVj
dCBpcyBvbmUgb2Ygc2V2ZXJhbAotcmVzZWFyY2ggcHJvamVjdHMgYXQgQ29tcGFxIHRoYXQgYXJl
IHJlbGF0ZWQgdG8gcG9ja2V0IGNvbXB1dGluZy4KLQotRm9yIG1vcmUgaW5mb3JtYXRpb24sIHNl
ZToKLQotCWh0dHA6Ly93d3cuaHBsLmhwLmNvbS9kb3dubG9hZHMvY3JsL2l0c3kvCi0KLU5vdGVz
IG9uIGluaXRpYWwgMi40IEl0c3kgc3VwcG9ydCAoOC8yNy8yMDAwKSA6Ci0KLVRoZSBwb3J0IHdh
cyBkb25lIG9uIGFuIEl0c3kgdmVyc2lvbiAxLjUgbWFjaGluZSB3aXRoIGEgZGF1Z2h0ZXJjYXJk
IHdpdGgKLTY0IE1lZyBvZiBEUkFNIGFuZCAzMiBNZWcgb2YgRmxhc2guIFRoZSBpbml0aWFsIHdv
cmsgaW5jbHVkZXMgc3VwcG9ydCBmb3IKLXNlcmlhbCBjb25zb2xlICh0byBzZWUgd2hhdCB5b3Un
cmUgZG9pbmcpLiAgTm8gb3RoZXIgZGV2aWNlcyBoYXZlIGJlZW4KLWVuYWJsZWQuCi0KLVRvIGJ1
aWxkLCBkbyBhICJtYWtlIG1lbnVjb25maWciIChvciB4bWVudWNvbmZpZykgYW5kIHNlbGVjdCBJ
dHN5IHN1cHBvcnQuCi1EaXNhYmxlIEZsYXNoIGFuZCBMQ0Qgc3VwcG9ydC4gYW5kIHRoZW4gZG8g
YSBtYWtlIHpJbWFnZS4KLUZpbmFsbHksIHlvdSB3aWxsIG5lZWQgdG8gY2QgdG8gYXJjaC9hcm0v
Ym9vdC90b29scyBhbmQgZXhlY3V0ZSBhIG1ha2UgdGhlcmUKLXRvIGJ1aWxkIHRoZSBwYXJhbXMt
aXRzeSBwcm9ncmFtIHVzZWQgdG8gYm9vdCB0aGUga2VybmVsLgotCi1JbiBvcmRlciB0byBpbnN0
YWxsIHRoZSBwb3J0IG9mIDIuNCB0byB0aGUgaXRzeSwgWW91IHdpbGwgbmVlZCB0byBzZXQgdGhl
Ci1jb25maWd1cmF0aW9uIHBhcmFtZXRlcnMgaW4gdGhlIG1vbml0b3IgYXMgZm9sbG93czo6Ci0K
LQlBcmcgMToweDA4MzQwMDAwLCBBcmcyOiAweEMwMDAwMDAwLCBBcmczOjE4ICgweDEyKSwgQXJn
NDowCi0KLU1ha2Ugc3VyZSB0aGUgc3RhcnQtcm91dGluZSBhZGRyZXNzIGlzIHNldCB0byAweDAw
MDYwMDAwLgotCi1OZXh0LCBmbGFzaCB0aGUgcGFyYW1zLWl0c3kgcHJvZ3JhbSB0byAweDAwMDYw
MDAwICgicCAxIDB4MDAwNjAwMDAiIGluIHRoZQotZmxhc2ggbWVudSkgIEZsYXNoIHRoZSBrZXJu
ZWwgaW4gYXJjaC9hcm0vYm9vdC96SW1hZ2UgaW50byAweDA4MzQwMDAwCi0oInAgMSAweDAwMzQw
MDAwIikuICBGaW5hbGx5IGZsYXNoIGFuIGluaXRpYWwgcmFtZGlzayBpbnRvIDB4QzgwMDAwMDAK
LSgicCAyIDB4MCIpICBXZSB1c2VkIHJhbWRpc2stMi0zMC5neiBmcm9tIHRoZSAwLjExIHZlcnNp
b24gZGlyZWN0b3J5IG9uCi1oYW5kaGVsZHMub3JnLgotCi1UaGUgc2VyaWFsIGNvbm5lY3Rpb24g
d2UgZXN0YWJsaXNoZWQgd2FzIGF0OgotCi04LWJpdCBkYXRhLCBubyBwYXJpdHksIDEgc3RvcCBi
aXQocyksIDExNTIwMC4wMCBiL3MuIGluIHRoZSBtb25pdG9yLCBpbiB0aGUKLXBhcmFtcy1pdHN5
IHByb2dyYW0sIGFuZCBpbiB0aGUga2VybmVsIGl0c2VsZi4gIFRoaXMgY2FuIGJlIGNoYW5nZWQs
IGJ1dAotbm90IGVhc2lseS4gVGhlIG1vbml0b3IgcGFyYW1ldGVycyBhcmUgZWFzaWx5IGNoYW5n
ZWQsIHRoZSBwYXJhbXMgcHJvZ3JhbQotc2V0dXAgaXMgYXNzZW1ibHkgb3V0bCdzLCBhbmQgdGhl
IGtlcm5lbCBpcyBhIGNvbmZpZ3VyYXRpb24gaXRlbSBzcGVjaWZpYyB0bwotdGhlIGl0c3kuIChp
LmUuIGdyZXAgZm9yIENPTkZJR19TQTExMDBfSVRTWSBhbmQgeW91J2xsIGZpbmQgd2hlcmUgaXQg
aXMuKQotCi0KLVRoaXMgc2hvdWxkIGdldCB5b3UgYSBwcm9wZXJseSBib290aW5nIDIuNCBrZXJu
ZWwgb24gdGhlIGl0c3kuCmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2FybS9zYTExMDAvbmFu
b2VuZ2luZS5yc3QgYi9Eb2N1bWVudGF0aW9uL2FybS9zYTExMDAvbmFub2VuZ2luZS5yc3QKZGVs
ZXRlZCBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDQ3ZjFhMTRjZjk4YS4uMDAwMDAwMDAwMDAwCi0t
LSBhL0RvY3VtZW50YXRpb24vYXJtL3NhMTEwMC9uYW5vZW5naW5lLnJzdAorKysgL2Rldi9udWxs
CkBAIC0xLDExICswLDAgQEAKLT09PT09PT09PT0KLW5hbm9FbmdpbmUKLT09PT09PT09PT0KLQot
Im5hbm9FbmdpbmUiIGlzIGEgU0ExMTEwIGJhc2VkIHNpbmdsZSBib2FyZCBjb21wdXRlciBmcm9t
Ci1CcmlnaHQgU3RhciBFbmdpbmVlcmluZyBJbmMuICBTZWUgd3d3LmJyaWdodHN0YXJlbmcuY29t
L2FybQotZm9yIG1vcmUgaW5mby4KLShSZWY6IFN0dWFydCBBZGFtcyA8c2phQGJyaWdodHN0YXJl
bmcuY29tPikKLQotQWxzbyB2aXNpdCBMYXJyeSBEb29saXR0bGUncyAiTGludXggZm9yIHRoZSBu
YW5vRW5naW5lIiBzaXRlOgotaHR0cDovL3d3dy5icmlnaHRzdGFyZW5nLmNvbS9hcm0vbmFub2Vu
Zy5odG0KZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vYXJtL3NhMTEwMC9wYW5nb2xpbi5yc3Qg
Yi9Eb2N1bWVudGF0aW9uL2FybS9zYTExMDAvcGFuZ29saW4ucnN0CmRlbGV0ZWQgZmlsZSBtb2Rl
IDEwMDY0NAppbmRleCBmMGM1YzE2MTg1NTMuLjAwMDAwMDAwMDAwMAotLS0gYS9Eb2N1bWVudGF0
aW9uL2FybS9zYTExMDAvcGFuZ29saW4ucnN0CisrKyAvZGV2L251bGwKQEAgLTEsMjkgKzAsMCBA
QAotPT09PT09PT0KLVBhbmdvbGluCi09PT09PT09PQotCi1QYW5nb2xpbiBpcyBhIFN0cm9uZ0FS
TSAxMTEwLWJhc2VkIGV2YWx1YXRpb24gcGxhdGZvcm0gcHJvZHVjZWQKLWJ5IERpYWxvZ3VlIFRl
Y2hub2xvZ3kgKGh0dHA6Ly93d3cuZGlhbG9ndWUuY29tLnR3LykuCi1JdCBoYXMgRUlTQSBzbG90
cyBmb3IgZWFzZSBvZiBjb25maWd1cmF0aW9uIHdpdGggU0RSQU0vRmxhc2gKLW1lbW9yeSBjYXJk
LCBVU0IvU2VyaWFsL0F1ZGlvIGNhcmQsIENvbXBhY3QgRmxhc2ggY2FyZCwKLVBDTUNJQS9JREUg
Y2FyZCBhbmQgVEZULUxDRCBjYXJkLgotCi1UbyBjb21waWxlIGZvciBQYW5nb2xpbiwgeW91IG11
c3QgaXNzdWUgdGhlIGZvbGxvd2luZyBjb21tYW5kczo6Ci0KLQltYWtlIHBhbmdvbGluX2NvbmZp
ZwotCW1ha2Ugb2xkY29uZmlnCi0JbWFrZSB6SW1hZ2UKLQotU3VwcG9ydGVkIHBlcmlwaGVyYWxz
Ci09PT09PT09PT09PT09PT09PT09PT0KLQotLSBTQTExMTAgc2VyaWFsIHBvcnQgKFVBUlQxL1VB
UlQyL1VBUlQzKQotLSBmbGFzaCBtZW1vcnkgYWNjZXNzCi0tIGNvbXBhY3QgZmxhc2ggZHJpdmVy
Ci0tIFVEQTEzNDEgc291bmQgZHJpdmVyCi0tIFNBMTEwMCBMQ0QgY29udHJvbGxlciBmb3IgODAw
eDYwMCAxNmJwcCBURlQtTENECi0tIE1RLTIwMCBkcml2ZXIgZm9yIDgwMHg2MDAgMTZicHAgVEZU
LUxDRAotLSBQZW5tb3VudCh0b3VjaCBwYW5lbCkgZHJpdmVyCi0tIFBDTUNJQSBkcml2ZXIKLS0g
U01DOTFDOTQgTEFOIGRyaXZlcgotLSBJREUgZHJpdmVyIChleHBlcmltZW50YWwpCmRpZmYgLS1n
aXQgYS9Eb2N1bWVudGF0aW9uL2FybS9zYTExMDAvcGxlYi5yc3QgYi9Eb2N1bWVudGF0aW9uL2Fy
bS9zYTExMDAvcGxlYi5yc3QKZGVsZXRlZCBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IGQ1YjczMjk2
N2FhMy4uMDAwMDAwMDAwMDAwCi0tLSBhL0RvY3VtZW50YXRpb24vYXJtL3NhMTEwMC9wbGViLnJz
dAorKysgL2Rldi9udWxsCkBAIC0xLDEzICswLDAgQEAKLT09PT0KLVBMRUIKLT09PT0KLQotVGhl
IFBMRUIgcHJvamVjdCB3YXMgc3RhcnRlZCBhcyBhIHN0dWRlbnQgaW5pdGlhdGl2ZSBhdCB0aGUg
U2Nob29sIG9mCi1Db21wdXRlciBTY2llbmNlIGFuZCBFbmdpbmVlcmluZywgVW5pdmVyc2l0eSBv
ZiBOZXcgU291dGggV2FsZXMgdG8gbWFrZSBhCi1wb2NrZXQgY29tcHV0ZXIgY2FwYWJsZSBvZiBy
dW5uaW5nIHRoZSBMaW51eCBLZXJuZWwuCi0KLVBMRUIgc3VwcG9ydCBoYXMgeWV0IHRvIGJlIGZ1
bGx5IGludGVncmF0ZWQuCi0KLUZvciBtb3JlIGluZm9ybWF0aW9uLCBzZWU6Ci0KLQlodHRwOi8v
d3d3LmNzZS51bnN3LmVkdS5hdQpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9hcm0vc2ExMTAw
L3RpZm9uLnJzdCBiL0RvY3VtZW50YXRpb24vYXJtL3NhMTEwMC90aWZvbi5yc3QKZGVsZXRlZCBm
aWxlIG1vZGUgMTAwNjQ0CmluZGV4IGMyNmU5MTBiOWVhNy4uMDAwMDAwMDAwMDAwCi0tLSBhL0Rv
Y3VtZW50YXRpb24vYXJtL3NhMTEwMC90aWZvbi5yc3QKKysrIC9kZXYvbnVsbApAQCAtMSw3ICsw
LDAgQEAKLT09PT09Ci1UaWZvbgotPT09PT0KLQotTW9yZSBpbmZvIGhhcyB0byBjb21lLi4uCi0K
LUNvbnRhY3Q6IFBldGVyIERhbmllbHNzb24gPHBldGVyLmRhbmllbHNzb25AZXJhLXQuZXJpY3Nz
b24uc2U+CmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2FybS9zYTExMDAveW9weS5yc3QgYi9E
b2N1bWVudGF0aW9uL2FybS9zYTExMDAveW9weS5yc3QKZGVsZXRlZCBmaWxlIG1vZGUgMTAwNjQ0
CmluZGV4IDViMzVhNWY2MWE0NC4uMDAwMDAwMDAwMDAwCi0tLSBhL0RvY3VtZW50YXRpb24vYXJt
L3NhMTEwMC95b3B5LnJzdAorKysgL2Rldi9udWxsCkBAIC0xLDUgKzAsMCBAQAotPT09PQotWW9w
eQotPT09PQotCi1TZWUgaHR0cDovL3d3dy55b3B5ZGV2ZWxvcGVyLm9yZyBmb3IgbW9yZS4KLS0K
Mi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
