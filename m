Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 378E11389D4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 04:41:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OVat3vbm7TFbZIWVG396tjtiYSTTkq4Urb6aGkPkFxY=; b=es08Z7loY5q7aM
	SHq/QorgVwO0od6VkNvu2d9KU3adNIzFZd6bacs3xF1j6Yo+KOtdufHwXUgAePCH/0bgYnLhdpsCB
	TYe60MFHodmikRYgZg51xpbdAzwt3A62Rkik913F9F2o3SsRfDBlS43CeVMhqlQUkei+GZHe2h3al
	qeyWxK3s4r3gXKLxtNx1HhVM7ItUbF93ukyXNpUlBTwC95ppaROVmilFUDeEC1CiaE6OsRvmT8OG7
	yhH5uAnuqRJ3nmsUT3SHJz6UWQc41vjGHFJ+9NJU7sLyf7P1FsyTMuC1Ydj13bXO9Mj+SiXcnPFyN
	MXTPYlrRKPXecLSJJNNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqqbO-00031q-5N; Mon, 13 Jan 2020 03:41:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqqam-0002b2-4C
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 03:40:41 +0000
Received: from localhost (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9DE8E24125;
 Mon, 13 Jan 2020 03:40:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578886839;
 bh=3CQcLNW1yCGzJpNadOa/g60yo+628eVJ2ZPet2br+fw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=LGuVCt5VUsmgRw9Bx4itPQHDsDrORoFoExMF9tp9DygAnWfv5B8VnzDF03AL6qpnj
 YlfvuQX89tsW/RizOpyfSWa/CVrtYbZcsg2kH5zyk6ETXDHnm3c32BrWRikRcQdjaQ
 I1vLXxkjlyzxuI85hJflahKXg4lLu5VYvQppEln4=
From: Shawn Guo <shawnguo@kernel.org>
To: soc@kernel.org,
	arm@kernel.org
Subject: [GIT PULL 3/6] i.MX DT bindings update for 5.6
Date: Mon, 13 Jan 2020 11:40:03 +0800
Message-Id: <20200113034006.17430-3-shawnguo@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200113034006.17430-1-shawnguo@kernel.org>
References: <20200113034006.17430-1-shawnguo@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_194040_201791_48F07542 
X-CRM114-Status: GOOD (  10.61  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Shawn Guo <shawnguo@kernel.org>, Stefan Agner <stefan@agner.ch>,
 Li Yang <leoyang.li@nxp.com>, linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIGZvbGxvd2luZyBjaGFuZ2VzIHNpbmNlIGNvbW1pdCBlNDI2MTdiODI1ZjgwNzM1NjlkYTc2
ZGM0NTEwYmZhMDE5YjFjMzVhOgoKICBMaW51eCA1LjUtcmMxICgyMDE5LTEyLTA4IDE0OjU3OjU1
IC0wODAwKQoKYXJlIGF2YWlsYWJsZSBpbiB0aGUgR2l0IHJlcG9zaXRvcnkgYXQ6CgogIGdpdDov
L2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9zaGF3bmd1by9saW51eC5n
aXQgdGFncy9pbXgtYmluZGluZ3MtNS42Cgpmb3IgeW91IHRvIGZldGNoIGNoYW5nZXMgdXAgdG8g
NzQ3NjEyYzRhZWZkOTRkYTM0ZThjODk2NjJjYzhjODI4NDBlNjFjNToKCiAgZHQtYmluZGluZ3M6
IGFybTogZnNsOiBBZGQgR2F0ZXdvcmtzIFZlbnRhbmEgaS5NWDZETC9RIGNvbXBhdGlibGVzICgy
MDIwLTAxLTEyIDE0OjIwOjA0ICswODAwKQoKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQppLk1YIERUIGJpbmRpbmdzIHVwZGF0
ZSBmb3IgNS42OgoKIC0gQWRkIGNvbXBhdGlibGVzIGZvciBib2FyZHM6CiAgICAgaS5NWDYgU29s
b1ggU0RCIFJldi1BIEJvYXJkCiAgICAgaS5NWDcgU2FicmVTRCBSZXYtQSBCb2FyZAogICAgIGku
TVg2U0wgYmFzZWQgVG9saW5vIFNoaW5lIDMgZUJvb2sgcmVhZGVyCiAgICAgaS5NWDdVTFAgRW1i
ZWRkZWQgQXJ0aXN0cyBDT00gQm9hcmQKICAgICBpLk1YOE1RIFRob3I5NiBCb2FyZAogICAgIGku
TVg4TVEgYmFzZWQgR29vZ2xlIENvcmFsIEVkZ2UgVFBVCiAgICAgaS5NWDZRL0RMIGJhc2VkIEdh
dGV3b3JrcyBWZW50YW5hIEJvYXJkcwogICAgIExYMjE2MEEgYmFzZWQgUURTIGFuZCBSREIgQm9h
cmRzCiAtIEFkZCBtaXNzaW5nIGlteDZzbGwgaW50byBmc2wtcHhwIGJpbmRpbmdzLgogLSBBZGQg
aS5NWDhNUSBMQ0RJRiBjb21wYXRpYmxlIGludG8gbXhzZmIgYmluZGluZ3MuCgotLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCkFu
ZHJlYXMgS2VtbmFkZSAoMik6CiAgICAgIGR0LWJpbmRpbmdzOiBhcm06IGZzbDogYWRkIGNvbXBh
dGlibGUgc3RyaW5nIGZvciBUb2xpbm8gU2hpbmUgMwogICAgICBtZWRpYTogZHQtYmluZGluZ3M6
IG1lZGlhOiBmc2wtcHhwOiBhZGQgbWlzc2luZyBpbXg2c2xsCgpBbnNvbiBIdWFuZyAoMik6CiAg
ICAgIGR0LWJpbmRpbmdzOiBhcm06IGlteDogQWRkIHRoZSBpLk1YNlNYLVNEQiBSZXYtQSBib2Fy
ZAogICAgICBkdC1iaW5kaW5nczogYXJtOiBpbXg6IEFkZCB0aGUgaS5NWDdELVNEQiBSZXYtQSBi
b2FyZAoKRmFiaW8gRXN0ZXZhbSAoMSk6CiAgICAgIGR0LWJpbmRpbmdzOiBhcm06IGZzbDogRG9j
dW1lbnQgaS5NWDdVTFAgRW1iZWRkZWQgQXJ0aXN0cyBDT00gYm9hcmQKCkd1aWRvIEfDvG50aGVy
ICgxKToKICAgICAgZHQtYmluZGluZ3M6IG14c2ZiOiBBZGQgY29tcGF0aWJsZSBmb3IgaU1YOE1R
CgpNYW5pdmFubmFuIFNhZGhhc2l2YW0gKDEpOgogICAgICBkdC1iaW5kaW5nczogYXJtOiBBZGQg
ZGV2aWNldHJlZSBiaW5kaW5nIGZvciBUaG9yOTYgQm9hcmQKCk1hcmNvIEFudG9uaW8gRnJhbmNo
aSAoMSk6CiAgICAgIGR0LWJpbmRpbmdzOiBhcm06IEFkZCBHb29nbGUgQ29yYWwgRWRnZSBUUFUg
ZW50cnkKClJvYmVydCBKb25lcyAoMSk6CiAgICAgIGR0LWJpbmRpbmdzOiBhcm06IGZzbDogQWRk
IEdhdGV3b3JrcyBWZW50YW5hIGkuTVg2REwvUSBjb21wYXRpYmxlcwoKU2hhd24gR3VvICgxKToK
ICAgICAgYmluZGluZ3M6IGZzbDogZG9jdW1lbnQgY29tcGF0aWJsZXMgb2YgbHgyMTYwYSBib2Fy
ZHMKCiBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL2ZzbC55YW1sICAgICB8
IDU0ICsrKysrKysrKysrKysrKysrKysrKysKIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3Bs
YXkvbXhzZmIudHh0ICAgICAgICAgIHwgIDEgKwogLi4uL2RldmljZXRyZWUvYmluZGluZ3MvbWVk
aWEvZnNsLXB4cC50eHQgICAgICAgICAgfCAgMiArLQogMyBmaWxlcyBjaGFuZ2VkLCA1NiBpbnNl
cnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
