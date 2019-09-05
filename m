Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13DE1AA340
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 14:32:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VvaVH9k23onUFhWdj/NXHyjTDc6pLo7UbBvut7Z9U/k=; b=SvFASvAw7wAF9p
	GV1uVdggEuuXgqTOmFXzvVN2UofcNpDysW0gAukOV6anu0hZ7MQyFIzAOcZhrw19H/e2osr1bJy2Y
	BkRu/uTlswvEmVEXP8C+TXIB8jXTiSyTpxKPfhYezL6zHtsokNWNhV26Edka8/rLoApjeyc1WrtAr
	aGfENtj57uoXVdAKmhUFfkQlWIV9+KN4n2dA6vK9TS/4rLYHfwC4k7Xy/f3QjAr4I5MxVbcZ+WBMo
	Rz6HH7pA5EJSZckHOZ0PtfRwXt9SGh3a1KtnwTYlkSTbDbWrUjo7Qx1L3tZKxWIDyq+PM9P3XWJQn
	0S7XSn9hJ84A3jJ4KeSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5qw0-0004kB-VX; Thu, 05 Sep 2019 12:32:21 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5qvo-0004b3-GY
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 12:32:10 +0000
Received: by mail-wr1-x444.google.com with SMTP id h7so2545553wrt.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Sep 2019 05:32:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xuzP+vnCO2xAl32UsUr1yZq/4EL5LN563c95drnPuDA=;
 b=YVHezsn8/40byllVUiMPUITf/cYMaBIGTm+rn+siVdtZq7jfAbSg54rrCLxSIfZImr
 qQu4WCFZdnotEBEJbisjCiY+i/D+GCLb3ZDxVSo0fj1NAzoEP1NHviR8krHYR28cHY4y
 HUgLTkdrkBDhYMxe58zH3odBfm0gQW4OAOofSJ8+nLQnLTUrkve4352kKie9+pD9vefQ
 w6Yur/wqZtUMjub7iHlynuc0UO/HmKG9gVgpSJR52Br+rOkNs7Jq0GuCuWjjuFUyMStm
 lMzdOzTZu6H3r+bEVzrCjsr3mUJZc2ZSkp4JuTitJbPKMyCTLUfme2l3NXI0TPgYzZzz
 thoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :mime-version:content-transfer-encoding;
 bh=xuzP+vnCO2xAl32UsUr1yZq/4EL5LN563c95drnPuDA=;
 b=h8hvwBVeH2mThBwh02cv3SzH0XARMjk2qhXecOP/AkqxvpyRRoo1dicAQgvsmFKDCn
 pV6A3ZwRXZLuSCLaQD1y4qJNSlexyaL80n0NKYsrPZVgYqJ2ouuhBZvQMIJcbW7Mnt7Y
 eGtEwbddPKvW/VbiZoxywxvw9Pn8+0HvjzSNyVgGEGJYPsRdzV2ljSO74FjIkqS8nz5l
 E8ZL9avtYDGqKG2/PYpwISGzG1tlZOlYAhS/JzX3mIQdx0NvTMo0JHXUi4T7gZPF09M9
 Mtkz0gmtRpXV1EDI0DXGNJWpz5/vANByhzWD7PXOk52oRMLaKuGHcdVwNq7E6J5a3Qiu
 Rc4w==
X-Gm-Message-State: APjAAAXna1cPxy8b8O0gZ3eZZOlbxMZlfwPAPdrnEEKziXJXb3SCynjF
 enemwopLxNAE6bvaclE9X9w=
X-Google-Smtp-Source: APXvYqyY5+R3jS7MmxUz3+8/IxXEe+qctgB4B9IZRZ+7x6oJRXKgAiEdvgW/q9wKkCY06WzNP26bjA==
X-Received: by 2002:a5d:6585:: with SMTP id q5mr2323071wru.162.1567686724272; 
 Thu, 05 Sep 2019 05:32:04 -0700 (PDT)
Received: from localhost.localdomain (ip5b4096c3.dynamic.kabel-deutschland.de.
 [91.64.150.195])
 by smtp.gmail.com with ESMTPSA id t203sm3184535wmf.42.2019.09.05.05.32.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Sep 2019 05:32:03 -0700 (PDT)
From: Krzysztof Wilczynski <kw@linux.com>
To: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>
Subject: [PATCH] drm/exynos: Move static keyword to the front of declaration
Date: Thu,  5 Sep 2019 14:32:02 +0200
Message-Id: <20190905123202.28001-1-kw@linux.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_053208_631677_5C8A1DE5 
X-CRM114-Status: GOOD (  12.61  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kswilczynski[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-samsung-soc@vger.kernel.org, Joonyoung Shim <jy0922.shim@samsung.com>,
 Seung-Woo Kim <sw0312.kim@samsung.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Inki Dae <inki.dae@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TW92ZSB0aGUgc3RhdGljIGtleXdvcmQgdG8gdGhlIGZyb250IG9mIGRlY2xhcmF0aW9uIG9mIG1v
ZGVzLAphbmQgcmVzb2x2ZSB0aGUgZm9sbG93aW5nIGNvbXBpbGVyIHdhcm5pbmcgdGhhdCBjYW4g
YmUgc2Vlbgp3aGVuIGJ1aWxkaW5nIHdpdGggd2FybmluZ3MgZW5hYmxlZCAoVz0xKToKCmRyaXZl
cnMvZ3B1L2RybS9leHlub3MvZXh5bm9zX21peGVyLmM6MTA3NDoyOiB3YXJuaW5nOgogIOKAmHN0
YXRpY+KAmSBpcyBub3QgYXQgYmVnaW5uaW5nIG9mIGRlY2xhcmF0aW9uIFstV29sZC1zdHlsZS1k
ZWNsYXJhdGlvbl0KClNpZ25lZC1vZmYtYnk6IEtyenlzenRvZiBXaWxjenluc2tpIDxrd0BsaW51
eC5jb20+Ci0tLQpSZWxhdGVkOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIwMTkwODI3MjMz
MDE3LkdLOTk4N0Bnb29nbGUuY29tCgogZHJpdmVycy9ncHUvZHJtL2V4eW5vcy9leHlub3NfbWl4
ZXIuYyB8IDQgKystLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlv
bnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZXh5bm9zL2V4eW5vc19taXhlci5j
IGIvZHJpdmVycy9ncHUvZHJtL2V4eW5vcy9leHlub3NfbWl4ZXIuYwppbmRleCA3YjI0MzM4ZmFk
M2MuLjZjZmRiOTVmZWYyZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2V4eW5vcy9leHlu
b3NfbWl4ZXIuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vZXh5bm9zL2V4eW5vc19taXhlci5jCkBA
IC0xMDY5LDkgKzEwNjksOSBAQCBzdGF0aWMgYm9vbCBtaXhlcl9tb2RlX2ZpeHVwKHN0cnVjdCBl
eHlub3NfZHJtX2NydGMgKmNydGMsCiAJc3RydWN0IG1peGVyX2NvbnRleHQgKmN0eCA9IGNydGMt
PmN0eDsKIAlpbnQgd2lkdGggPSBtb2RlLT5oZGlzcGxheSwgaGVpZ2h0ID0gbW9kZS0+dmRpc3Bs
YXksIGk7CiAKLQlzdHJ1Y3QgeworCXN0YXRpYyBjb25zdCBzdHJ1Y3QgewogCQlpbnQgaGRpc3Bs
YXksIHZkaXNwbGF5LCBodG90YWwsIHZ0b3RhbCwgc2Nhbl92YWw7Ci0JfSBzdGF0aWMgY29uc3Qg
bW9kZXNbXSA9IHsKKwl9IG1vZGVzW10gPSB7CiAJCXsgNzIwLCA0ODAsIDg1OCwgNTI1LCBNWFJf
Q0ZHX1NDQU5fTlRTQyB8IE1YUl9DRkdfU0NBTl9TRCB9LAogCQl7IDcyMCwgNTc2LCA4NjQsIDYy
NSwgTVhSX0NGR19TQ0FOX1BBTCB8IE1YUl9DRkdfU0NBTl9TRCB9LAogCQl7IDEyODAsIDcyMCwg
MTY1MCwgNzUwLCBNWFJfQ0ZHX1NDQU5fSERfNzIwIHwgTVhSX0NGR19TQ0FOX0hEIH0sCi0tIAoy
LjIyLjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
