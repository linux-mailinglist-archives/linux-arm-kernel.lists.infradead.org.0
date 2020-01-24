Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABA8D147616
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 02:18:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y5ErI2FDIGx8xB9Mpq6EvtmlTq2NXxsYM12pbgqagW0=; b=Mjm0sNQtOR5FNF
	RTXUD5QnQXTIrEisq8kud8WiRpAQavaU5TLD44sp3iETKpaRuUrPqdM3SW36aJteF9DfC3w99P/e0
	xgvthuE7l0WojLI9LM9s/QgMsN+o05h7ncq8Z/wWeeRwH3ElexpxVFsPW3P2kbATuKVYiGYHOe1bR
	MZprx6OeFeZfQevzPdZZU0th9/Kh+pUpUIAyxWQxrGd6mLjzCCAr56+CSNYGypiV8E7kLDxfSkvaW
	Ap8W2YEkjCBoEYEVSUGZjL196TRLknjOCokJgqzGIjckDfr2Ly8CiZSnVGr8Strhpuyv9mvJDNU9C
	3LgbyUCXnQy8uwId85eQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iunc0-0002ze-Ul; Fri, 24 Jan 2020 01:18:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iunbG-0002ZI-5o
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 01:17:31 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D101E24125;
 Fri, 24 Jan 2020 01:17:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579828649;
 bh=WYPDK5cm9HmuZ3ULm+770FTcNMJYJDWL+36DjqaSXy4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=zhcU0Lq2b6Lq04u8xPmu/OCi4JUwFfcwfdVxIUrFmBww9kEYB+GlZjfrTzEZ9omn5
 bRQcpYLDyJHbO3XUnfD9HIBrlM7PFuwnDGnoofI+xSB0gnYlqoJaN9kVTU+S/YK3E4
 2WDVHwKJaRMykj5ded8KrbMpUhPI9BiKQi+TTFkc=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 18/33] ARM: config: aspeed-g5: Enable 8250_DW
 quirks
Date: Thu, 23 Jan 2020 20:16:53 -0500
Message-Id: <20200124011708.18232-18-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200124011708.18232-1-sashal@kernel.org>
References: <20200124011708.18232-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_171730_300077_C46C3C2A 
X-CRM114-Status: UNSURE (   9.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Sasha Levin <sashal@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 linux-aspeed@lists.ozlabs.org, Joel Stanley <joel@jms.id.au>,
 linux-arm-kernel@lists.infradead.org,
 =?UTF-8?q?C=C3=A9dric=20Le=20Goater?= <clg@kaod.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogSm9lbCBTdGFubGV5IDxqb2VsQGptcy5pZC5hdT4KClsgVXBzdHJlYW0gY29tbWl0IGE1
MzMxYTdhODdlYzgxZDUyMjhiNzQyMWFjZjgzMWIyZDBjMGRlMjYgXQoKVGhpcyBkcml2ZXIgb3B0
aW9uIGlzIHVzZWQgYnkgdGhlIEFTVDI2MDAgQTAgYm9hcmRzIHRvIHdvcmsgYXJvdW5kIGEKaGFy
ZHdhcmUgaXNzdWUuCgpSZXZpZXdlZC1ieTogQ8OpZHJpYyBMZSBHb2F0ZXIgPGNsZ0BrYW9kLm9y
Zz4KQWNrZWQtYnk6IEFybmQgQmVyZ21hbm4gPGFybmRAYXJuZGIuZGU+ClNpZ25lZC1vZmYtYnk6
IEpvZWwgU3RhbmxleSA8am9lbEBqbXMuaWQuYXU+ClNpZ25lZC1vZmYtYnk6IFNhc2hhIExldmlu
IDxzYXNoYWxAa2VybmVsLm9yZz4KLS0tCiBhcmNoL2FybS9jb25maWdzL2FzcGVlZF9nNV9kZWZj
b25maWcgfCAxICsKIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQoKZGlmZiAtLWdpdCBh
L2FyY2gvYXJtL2NvbmZpZ3MvYXNwZWVkX2c1X2RlZmNvbmZpZyBiL2FyY2gvYXJtL2NvbmZpZ3Mv
YXNwZWVkX2c1X2RlZmNvbmZpZwppbmRleCA1OTc1MzZjYzk1NzNkLi5iODc1MDhjNzA1NmM5IDEw
MDY0NAotLS0gYS9hcmNoL2FybS9jb25maWdzL2FzcGVlZF9nNV9kZWZjb25maWcKKysrIGIvYXJj
aC9hcm0vY29uZmlncy9hc3BlZWRfZzVfZGVmY29uZmlnCkBAIC0xMzksNiArMTM5LDcgQEAgQ09O
RklHX1NFUklBTF84MjUwX1JVTlRJTUVfVUFSVFM9NgogQ09ORklHX1NFUklBTF84MjUwX0VYVEVO
REVEPXkKIENPTkZJR19TRVJJQUxfODI1MF9BU1BFRURfVlVBUlQ9eQogQ09ORklHX1NFUklBTF84
MjUwX1NIQVJFX0lSUT15CitDT05GSUdfU0VSSUFMXzgyNTBfRFc9eQogQ09ORklHX1NFUklBTF9P
Rl9QTEFURk9STT15CiBDT05GSUdfQVNQRUVEX0tDU19JUE1JX0JNQz15CiBDT05GSUdfQVNQRUVE
X0JUX0lQTUlfQk1DPXkKLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
