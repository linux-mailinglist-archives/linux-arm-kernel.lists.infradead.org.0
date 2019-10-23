Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64165E2304
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 21:01:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1lIfhL6qDzuKhMbpAy8fmsLtR6qesi6TdDaqZRlae+s=; b=sojoGDA17uCkWtSRj2KCwhqTbM
	fPbjghaOzlXaxRVyUXoivDhmj4MCQ/ygGYSWKJHeheUUF7Vcnd7vkm6TY2NLh/ehB7Vd/7Ke9nUJn
	yYuWzJPI0voVCaByznjiQrnvET65aQdx6B+WQYYVnRU/bdnwHCttXazAxo4TWq2C20GMSepLNH8cb
	xsdTLe5xjbhVModCZNyb1qtaHMHiSB+6jgTQeR0AGuUpPbiDXHHO9ifRv3nLuPbS5V/Mt7xgiuI5B
	OqmZN6xrTbVPRtcdIKLSRDqdXU5pV+mPb3u1SXvwtASmplqy4RISwm9qSVLegyNy4up6GTqjekjct
	+U0WybLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNLsn-0002Vg-Va; Wed, 23 Oct 2019 19:01:22 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNLsd-0002VK-EP
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 19:01:13 +0000
Received: by mail-wr1-x443.google.com with SMTP id w18so22734735wrt.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 12:01:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=MS1EsOvATuvr2Q2ozyd9PsOhI+AijER4CtDUOpRrZC4=;
 b=MkZHBgVQHBJW/nbjGx2QNCrZ8zq8ChuE1f6/PhdSotS01GSwVSbOfKG1pP0lCzOJo7
 jFBADQmUl5RrYYOO67SuAdXjngU69cIj4RPU041OgP79fOeQUenXJuBWOlFpMtxxrOFo
 08dio4WrXi0K9HeLZ16vw9qY772PQTTfxJmAsPyDBlrsLdsjo5dkhHn/tRiLHwbeBdq4
 EY7PcKvobDvAyAsU3NuYQAQ0ra+GSB/yQtbuMTGKmleCEQ9GyfkgZTy1q5ieZm2L9J4F
 h/k7uhXHo7RNUa2C1Fu4UXgpSbs4UDp8g4NIK1H/ifyGZU5a1Wv9PaRoabdk9LzQC1DM
 wPhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=MS1EsOvATuvr2Q2ozyd9PsOhI+AijER4CtDUOpRrZC4=;
 b=C927bQR1eYforhzi1UU8OI4LJ80FS1cqlf8tORMXQleuo1u7qVn64SQ05bFylrQ4Ka
 G8VGlA3fpd1/WLzNYgv/FFa/PlGk+4qVp+ueLQiUPC7tIuIqCiGH9kZfpideq8ZbTkbW
 FMdSgcZUjd+8MT3u+Y707z5v7RYOG6I5iYEkBexoqnpsvAZrufPmhuMFBToGSa4u6szF
 aVmqG6fctltOOJr/6+4K2GQYh9HxtR6sKHa2KDLPTnM3A+xuRh3jrt/VpX+CE8xwNVj0
 pPM0i+YQ/DlbP4C0bhkz6G9Ya/ibbqa0PMxv0C65X9AyBJfir6dAZCf/IEQW2ZmleU1/
 QbhQ==
X-Gm-Message-State: APjAAAWan/z7SDl0S/vuL13FN4uFrQL9YxZzgkx7jewcfbqC7VoIwYyw
 /6NgtlzygJ4192jLtezQ4Ic=
X-Google-Smtp-Source: APXvYqxGFJpOf2zwbKyWL6TYgMoFYE+H1mqeWS/zUlwcgJa8LU1042HEiQJTJG48FA9YCb2kDOPj7g==
X-Received: by 2002:adf:ef0a:: with SMTP id e10mr220982wro.234.1571857269877; 
 Wed, 23 Oct 2019 12:01:09 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id 74sm33385841wrm.92.2019.10.23.12.01.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Oct 2019 12:01:08 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] MAINTAINERS: Remove Gregory and Brian for ARCH_BRCMSTB
Date: Wed, 23 Oct 2019 12:01:05 -0700
Message-Id: <20191023190105.17422-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191018171835.12666-1-f.fainelli@gmail.com>
References: <20191018171835.12666-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_120111_486284_6CFA54D2 
X-CRM114-Status: UNSURE (   9.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: briannorris@chromium.org, computersforpeace@gmail.com,
 gregory.0xf0@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 18 Oct 2019 10:18:35 -0700, Florian Fainelli <f.fainelli@gmail.com> wrote:
> The last time Gregory and Brian did a review was sometime around 2015,
> since then, they have not been active for ARCH_BRCMSTB changes.
> Following the position of other maintainers and Harald Welte's position
> here:
> 
> [1] http://laforge.gnumonks.org/blog/20180307-mchardy-gpl/
> 
> remove both of them.
> 
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> ---

Applied to maintainers/next, thanks!
--
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
