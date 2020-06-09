Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D9EC1F38C3
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 12:54:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AP5wTBQjk3ehjoJ/g1LL4+gyzVmBtALULQH3Poyh8co=; b=tVkDC9YC6jx/nY
	UzThiQftn7KzFU69bDZBP7kQArlMne9z8jr9zw8vd3HfW3bL13dtM5bil12eJjxQiz/ptEnXWZ6uV
	Qbh89u9iuHD1IRvREs0iLyXXFX1iqmKz4sbuUhl6aCoh4PF7I+Rea6D1bt7H+7qB52Y0+gnaHo86T
	wsdjDjerOVf5BflHsrLlGlyeWN0st65guFp3ISkMzrZi+CFHHX2PR2zQQT8O4IGJerf+auQZkLvAf
	ATrnE3UL4e3kqZu6LdXvxT91ilOd48XeWXd0KI98BKFE0piP9xhiMfyT838HeZ/0/l+WW0cpy/Ye3
	B0Q7UVKETLWt2oCaj/9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jibtG-000796-AK; Tue, 09 Jun 2020 10:53:58 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jibsC-0006HG-4h
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 10:52:53 +0000
Received: by mail-wm1-x331.google.com with SMTP id l17so2383887wmj.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jun 2020 03:52:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hJeYlzPvoPrXbT5CLnCDUqhSZEUIU0lHpQOSnzFUm8k=;
 b=Ope3F7nZyAOqCxCtvfqImTL5PCaNvV5hUSp3Syww2aYvcGIpxs16PqkIddX9TM/mtg
 fgM+3KI5+nSEaJfeAJQpbV8Ff5vgpd3rBlS26z5CwvLQN3VV34Y6PO/p8hnnnPCE+Ibu
 QFMImeKonIXiajjhc9HKn2TFIuBWHiW0by2g/Enhgm9OQjTzo1Qb2e9fb8sSxDtQWWKL
 HJkYuzndylzkqjQBaphjH40k68Qp05f3I4GkEs+fds5pPkdHTZCpkeDPGYf4g8X4UAJP
 l58PEViIlda4m/N0VPOP+axtsCOkjTM3G1HCdsDpJI8fg02FHq63IdLH4Q+dKRCCjDyB
 UagA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hJeYlzPvoPrXbT5CLnCDUqhSZEUIU0lHpQOSnzFUm8k=;
 b=EYdqau+NHQvFHb3Q7xxrj5ZnTzZcQ7mzOQcmiaCgiaxqevd1k09CZE1c4Dt7trJ90M
 aX4sdZGY+S9ZKPkJEXDIzUl8HxoSu51M6PfV6/F2q1b56wnA3dX8IpEfzWUKbpBi2OwJ
 ASBV14nIU4UfTF6R2m6Kq3XMiiY2Y4hLOdn1uIwQHPpxvdo1ITI3e8fyEThfWGzc7vwv
 8LZkCRHtEUb88lAs3jH5LwizfF5EXIq90pNjRGadQRcdw9ANhy19y1ewuw9BYhh5K9RM
 03a4RmYXHpm5CEZll54IUd0kD4x1CXwBLe0wbn8BOhsQmrW/RJju8aPzy7mBSYdLobz1
 0J8g==
X-Gm-Message-State: AOAM532Oj1H4E+VW0ykdmOiRe5O8CLKwN+ObYLVr5xnmWN1mOzo2tDlX
 ZFTzQ+FwmmjBXAr+PMx9eew=
X-Google-Smtp-Source: ABdhPJxGbt0UOOxgM0BS4bHHazb7Ur81/T8ArQNZwxR28RiqxKk6WvjKmPvjkGStst5AUp6Sd6NX8Q==
X-Received: by 2002:a1c:9e13:: with SMTP id h19mr3466751wme.107.1591699970667; 
 Tue, 09 Jun 2020 03:52:50 -0700 (PDT)
Received: from skynet.lan (28.red-83-49-61.dynamicip.rima-tde.net.
 [83.49.61.28])
 by smtp.gmail.com with ESMTPSA id h5sm2949931wrw.85.2020.06.09.03.52.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Jun 2020 03:52:50 -0700 (PDT)
From: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
To: hauke@hauke-m.de, zajec5@gmail.com, tsbogend@alpha.franken.de,
 robh+dt@kernel.org, f.fainelli@gmail.com, jonas.gorski@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, linux-mips@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH 4/4] mips: bmips: dts: add BCM6362 power domain support
Date: Tue,  9 Jun 2020 12:52:44 +0200
Message-Id: <20200609105244.4014823-5-noltari@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200609105244.4014823-1-noltari@gmail.com>
References: <20200609105244.4014823-1-noltari@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_035252_176344_B6121DB8 
X-CRM114-Status: UNSURE (   9.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:331 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [noltari[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QkNNNjM2MiBTb0NzIGhhdmUgYSBwb3dlciBkb21haW4gY29udHJvbGxlciB0byBlbmFibGUvZGlz
YWJsZSBjZXJ0YWluCmNvbXBvbmVudHMgaW4gb3JkZXIgdG8gc2F2ZSBwb3dlci4KClNpZ25lZC1v
ZmYtYnk6IMOBbHZhcm8gRmVybsOhbmRleiBSb2phcyA8bm9sdGFyaUBnbWFpbC5jb20+Ci0tLQog
YXJjaC9taXBzL2Jvb3QvZHRzL2JyY20vYmNtNjM2Mi5kdHNpIHwgNiArKysrKysKIDEgZmlsZSBj
aGFuZ2VkLCA2IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9hcmNoL21pcHMvYm9vdC9kdHMv
YnJjbS9iY202MzYyLmR0c2kgYi9hcmNoL21pcHMvYm9vdC9kdHMvYnJjbS9iY202MzYyLmR0c2kK
aW5kZXggOGFlNjk4MTczNWI4Li5jOThmOTExMWUzYzggMTAwNjQ0Ci0tLSBhL2FyY2gvbWlwcy9i
b290L2R0cy9icmNtL2JjbTYzNjIuZHRzaQorKysgYi9hcmNoL21pcHMvYm9vdC9kdHMvYnJjbS9i
Y202MzYyLmR0c2kKQEAgLTEwOCw2ICsxMDgsMTIgQEAgdWFydDE6IHNlcmlhbEAxMDAwMDEyMCB7
CiAJCQlzdGF0dXMgPSAiZGlzYWJsZWQiOwogCQl9OwogCisJCXBlcmlwaF9wd3I6IHBvd2VyLWNv
bnRyb2xsZXJAMTAwMDE4NDggeworCQkJY29tcGF0aWJsZSA9ICJicmNtLGJjbTYzNjItcG93ZXIt
Y29udHJvbGxlciI7CisJCQlyZWcgPSA8MHgxMDAwMTg0OCAweDQ+OworCQkJI3Bvd2VyLWRvbWFp
bi1jZWxscyA9IDwxPjsKKwkJfTsKKwogCQlsZWRzMDogbGVkLWNvbnRyb2xsZXJAMTAwMDE5MDAg
ewogCQkJI2FkZHJlc3MtY2VsbHMgPSA8MT47CiAJCQkjc2l6ZS1jZWxscyA9IDwwPjsKLS0gCjIu
MjYuMgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
