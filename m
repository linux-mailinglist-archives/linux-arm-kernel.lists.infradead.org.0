Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D6CB9C53D
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 25 Aug 2019 19:44:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xnIx8xiCWF1X3jsaoO+XfgVA1ZUCNu5fDxg5zFacTPs=; b=dF9RbohqJZrAzx
	Jkr7CDMnDL44wU5T/+2HNnkU/e18M3LHL8qsTRiXtsdEHMHJVtib13Vwsv5ZhHTw8pnb55nFwlT2j
	35bNMuNEh9ZEeqDWOke0graFHT4K6g7gpepHR39KHYi97Egy7evo68RjEsIILvs1zRO6ZwsaREZ2k
	3Lxy664kxhtbx/fUh7cYaxN0byrOqLiRLkk6XjZZaS+hzekbFddiqyauQ1a/T8+pfqu1t8FQiLhqN
	yL46OlSQqTvv7o7MMF0HM10HdOqFbjC4WKMjbEFBOdfJnUQLvFnYQhzMcHjqQbEkIVM4+TcgtW4Wa
	+mtMznCUzyP9v9uzb29A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1wYk-0006jX-E3; Sun, 25 Aug 2019 17:44:10 +0000
Received: from mx.0dd.nl ([5.2.79.48])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i1wYY-0006iJ-3W; Sun, 25 Aug 2019 17:44:00 +0000
Received: from mail.vdorst.com (mail.vdorst.com [IPv6:fd01::250])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.0dd.nl (Postfix) with ESMTPS id 0BDA45FA49;
 Sun, 25 Aug 2019 19:43:55 +0200 (CEST)
Authentication-Results: mx.0dd.nl; dkim=pass (2048-bit key;
 secure) header.d=vdorst.com header.i=@vdorst.com header.b="GGlDHOIy"; 
 dkim-atps=neutral
Received: from pc-rene.vdorst.com (pc-rene.vdorst.com [192.168.2.125])
 by mail.vdorst.com (Postfix) with ESMTPA id BDD6E1D8E163;
 Sun, 25 Aug 2019 19:43:54 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.vdorst.com BDD6E1D8E163
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vdorst.com;
 s=default; t=1566755034;
 bh=o6wAtIg9/9bX+HgLTjY6gx3KROiRBjCVc3xSGwYT8a4=;
 h=From:To:Cc:Subject:Date:From;
 b=GGlDHOIyVmHv3TJ/Pwnx6inYEWPnk/uL9BdikBAoiAv4wjbsOUKCSt+9/rEz8C4dq
 ODy7m/c8vrCUnLkaXFvTGm+FtbTATj0DL9kkdchm/5FkCz48ivzBGDO39Cc6tdFEzI
 fPpaNR4siNWqWf8Svp7Ir9VNL47OHf91CYWMJsdzMGyp/aOT/FeIZanbPOAb19WK1f
 cxPVGncvxKPxUDm3FRYe/bQq/2SZcn33j7tNy69TRrD4/4SIpkUR+5pskKcKO3w0mW
 +EXGwVpLUK/ms8Y1YwkXiEVdxZuTY0nLu+IknfWmo2eNFGlyDZ0WvDtFn3NPIQVvQD
 YDMnzZe+iKG2A==
From: =?UTF-8?q?Ren=C3=A9=20van=20Dorst?= <opensource@vdorst.com>
To: John Crispin <john@phrozen.org>, Sean Wang <sean.wang@mediatek.com>,
 Nelson Chang <nelson.chang@mediatek.com>,
 "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH net-next v4 0/3] net: ethernet: mediatek: convert to PHYLINK
Date: Sun, 25 Aug 2019 19:43:38 +0200
Message-Id: <20190825174341.20750-1-opensource@vdorst.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190825_104358_434669_293D125E 
X-CRM114-Status: UNSURE (   8.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Frank Wunderlich <frank-w@public-files.de>, netdev@vger.kernel.org,
 linux-mips@vger.kernel.org, Russell King <linux@armlinux.org.uk>,
 =?UTF-8?q?Ren=C3=A9=20van=20Dorst?= <opensource@vdorst.com>,
 linux-mediatek@lists.infradead.org, Stefan Roese <sr@denx.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlc2UgcGF0Y2hlcyBjb252ZXJ0cyBtZWRpYXRlayBkcml2ZXIgdG8gUEhZTElOSyBBUEkuCgp2
My0+djQ6CiogUGh5bGluayBpbXByb3ZlbWVudHMgYW5kIGNsZWFuLXVwcyBhZnRlciByZXZpZXcK
djItPnYzOgoqIFBoeWxpbmsgaW1wcm92ZW1lbnRzIGFuZCBjbGVhbi11cHMgYWZ0ZXIgcmV2aWV3
CnYxLT52MjoKKiBSZWJhc2UgZm9yIG10NzZ4OCBjaGFuZ2VzCiogUGh5bGluayBpbXByb3ZlbWVu
dHMgYW5kIGNsZWFuLXVwcyBhZnRlciByZXZpZXcKKiBTR01JSSBwb3J0IGRvZXNuJ3Qgc3VwcG9y
dCAyLjVHYml0IGluIFNHTUlJIG1vZGUgb25seSBpbiBCQVNFLVggbW9kZS4KICBSZWZhY3RvciB0
aGUgY29kZS4KCgpSZW7DqSB2YW4gRG9yc3QgKDMpOgogIG5ldDogZXRoZXJuZXQ6IG1lZGlhdGVr
OiBBZGQgYmFzaWMgUEhZTElOSyBzdXBwb3J0CiAgbmV0OiBldGhlcm5ldDogbWVkaWF0ZWs6IFJl
LWFkZCBzdXBwb3J0IFNHTUlJCiAgZHQtYmluZGluZ3M6IG5ldDogZXRoZXJuZXQ6IFVwZGF0ZSBt
dDc2MjIgZG9jcyBhbmQgZHRzIHRvIHJlZmxlY3QgdGhlCiAgICBuZXcgcGh5bGluayBBUEkKCiAu
Li4vYXJtL21lZGlhdGVrL21lZGlhdGVrLHNnbWlpc3lzLnR4dCAgICAgICAgfCAgIDIgLQogLi4u
L2R0cy9tZWRpYXRlay9tdDc2MjItYmFuYW5hcGktYnBpLXI2NC5kdHMgIHwgIDI4ICstCiBhcmNo
L2FybTY0L2Jvb3QvZHRzL21lZGlhdGVrL210NzYyMi5kdHNpICAgICAgfCAgIDEgLQogZHJpdmVy
cy9uZXQvZXRoZXJuZXQvbWVkaWF0ZWsvS2NvbmZpZyAgICAgICAgIHwgICAyICstCiBkcml2ZXJz
L25ldC9ldGhlcm5ldC9tZWRpYXRlay9tdGtfZXRoX3BhdGguYyAgfCAgNzUgKy0tCiBkcml2ZXJz
L25ldC9ldGhlcm5ldC9tZWRpYXRlay9tdGtfZXRoX3NvYy5jICAgfCA1MjEgKysrKysrKysrKysr
LS0tLS0tCiBkcml2ZXJzL25ldC9ldGhlcm5ldC9tZWRpYXRlay9tdGtfZXRoX3NvYy5oICAgfCAg
NjggKystCiBkcml2ZXJzL25ldC9ldGhlcm5ldC9tZWRpYXRlay9tdGtfc2dtaWkuYyAgICAgfCAg
NjUgKystCiA4IGZpbGVzIGNoYW5nZWQsIDQ3MCBpbnNlcnRpb25zKCspLCAyOTIgZGVsZXRpb25z
KC0pCgotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
