Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82F951CD739
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 13:08:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jhfQhceCRP3TxDx5RylYNPazSo3oAPgbseu8k8gZKXU=; b=AXfwpYHAk8NrBL
	zxr09zd9XkasklMFBPbjw76b/SYArxRwXJXo9xoYi90eUvxvrwHEdSofbCjKyoQF81C5xLAmAiqta
	N8bmuB3rsXvx3KxhGFVvrFBmJNQt7lM8fDoDfq/UH+30TLpMOhdTRDNrhxXbt5bPRSbFza6ID5BMX
	ki1mYe5zDYyaabRVj0gUQ+jNh9AGS3Rlhv+zdft9RWdqJByXNhhZumTCHc4gW5dPxPHLfWwQ6E4fX
	ZYSFRfhN7RAtM4ZRBNvz+OlBW4HFrkE9PaleNMDM0bewa4uE6qAjCpmLeYv/e8K3INNK0rBCnT06v
	m9SMjwZHwgNrTZtoF16A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY6Hp-00043D-MN; Mon, 11 May 2020 11:07:53 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY6Gd-00037r-0H
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 11:06:41 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) (Authenticated sender: rcn)
 with ESMTPSA id 4422F2A0C9B
From: =?UTF-8?q?Ricardo=20Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>
To: laurent.pinchart@ideasonboard.com
Subject: [PATCH v2 4/6] arm64: dts: hisilicon: hikey: fixes to comply with adi,
 adv7533 DT binding
Date: Mon, 11 May 2020 13:06:09 +0200
Message-Id: <20200511110611.3142-5-ricardo.canuelo@collabora.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200511110611.3142-1-ricardo.canuelo@collabora.com>
References: <20200511110611.3142-1-ricardo.canuelo@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_040639_175307_FD236E82 
X-CRM114-Status: GOOD (  10.04  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: devicetree@vger.kernel.org, geert+renesas@glider.be, xuwei5@hisilicon.com,
 robh+dt@kernel.org, kernel@collabora.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

aGkzNjYwLWhpa2V5OTYwLmR0czoKICBEZWZpbmUgYSAncG9ydHMnIG5vZGUgZm9yICdhZHY3NTMz
OiBhZHY3NTMzQDM5JyBhbmQgdGhlCiAgJ2FkaSxkc2ktbGFuZXMnIHByb3BlcnR5IHRvIG1ha2Ug
aXQgY29tcGxpYW50IHdpdGggdGhlIGFkaSxhZHY3NTMzIERUCiAgYmluZGluZy4KCiAgVGhpcyBm
aWxscyB0aGUgcmVxdWlyZW1lbnRzIHRvIG1lZXQgdGhlIGJpbmRpbmcgcmVxdWlyZW1lbnRzLAog
IHJlbW90ZSBlbmRwb2ludHMgYXJlIG5vdCBkZWZpbmVkLgoKaGk2MjIwLWhpa2V5LmR0czoKICBD
aGFuZ2UgcHJvcGVydHkgbmFtZSBzL3BkLWdwaW8vcGQtZ3Bpb3MsIGdwaW8gcHJvcGVydGllcyBz
aG91bGQgYmUKICBwbHVyYWwuIFRoaXMgaXMganVzdCBhIGNvc21ldGljIGNoYW5nZS4KClNpZ25l
ZC1vZmYtYnk6IFJpY2FyZG8gQ2HDsXVlbG8gPHJpY2FyZG8uY2FudWVsb0Bjb2xsYWJvcmEuY29t
PgotLS0KIGFyY2gvYXJtNjQvYm9vdC9kdHMvaGlzaWxpY29uL2hpMzY2MC1oaWtleTk2MC5kdHMg
fCAxMSArKysrKysrKysrKwogYXJjaC9hcm02NC9ib290L2R0cy9oaXNpbGljb24vaGk2MjIwLWhp
a2V5LmR0cyAgICB8ICAyICstCiAyIGZpbGVzIGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKyksIDEg
ZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2hpc2lsaWNvbi9o
aTM2NjAtaGlrZXk5NjAuZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9oaXNpbGljb24vaGkzNjYw
LWhpa2V5OTYwLmR0cwppbmRleCBlMDM1Y2YxOTViMTkuLjhjNGJmYmFmM2E4MCAxMDA2NDQKLS0t
IGEvYXJjaC9hcm02NC9ib290L2R0cy9oaXNpbGljb24vaGkzNjYwLWhpa2V5OTYwLmR0cworKysg
Yi9hcmNoL2FybTY0L2Jvb3QvZHRzL2hpc2lsaWNvbi9oaTM2NjAtaGlrZXk5NjAuZHRzCkBAIC01
MzAsNiArNTMwLDE3IEBACiAJCXN0YXR1cyA9ICJvayI7CiAJCWNvbXBhdGlibGUgPSAiYWRpLGFk
djc1MzMiOwogCQlyZWcgPSA8MHgzOT47CisJCWFkaSxkc2ktbGFuZXMgPSA8ND47CisJCXBvcnRz
IHsKKwkJCSNhZGRyZXNzLWNlbGxzID0gPDE+OworCQkJI3NpemUtY2VsbHMgPSA8MD47CisJCQlw
b3J0QDAgeworCQkJCXJlZyA9IDwwPjsKKwkJCX07CisJCQlwb3J0QDEgeworCQkJCXJlZyA9IDwx
PjsKKwkJCX07CisJCX07CiAJfTsKIH07CiAKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9k
dHMvaGlzaWxpY29uL2hpNjIyMC1oaWtleS5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2hpc2ls
aWNvbi9oaTYyMjAtaGlrZXkuZHRzCmluZGV4IGMxNDIwNWNkNmJmNS4uM2U0NzE1MGMwNWVjIDEw
MDY0NAotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2hpc2lsaWNvbi9oaTYyMjAtaGlrZXkuZHRz
CisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvaGlzaWxpY29uL2hpNjIyMC1oaWtleS5kdHMKQEAg
LTUxNiw3ICs1MTYsNyBAQAogCQlyZWcgPSA8MHgzOT47CiAJCWludGVycnVwdC1wYXJlbnQgPSA8
JmdwaW8xPjsKIAkJaW50ZXJydXB0cyA9IDwxIDI+OwotCQlwZC1ncGlvID0gPCZncGlvMCA0IDA+
OworCQlwZC1ncGlvcyA9IDwmZ3BpbzAgNCAwPjsKIAkJYWRpLGRzaS1sYW5lcyA9IDw0PjsKIAkJ
I3NvdW5kLWRhaS1jZWxscyA9IDwwPjsKIAotLSAKMi4xOC4wCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
