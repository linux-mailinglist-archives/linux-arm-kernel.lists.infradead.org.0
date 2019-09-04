Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71154A85D2
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 16:59:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=24m31dX2ZAxbPMJP/4JKbNX9eAjTYUplMeYxXr/AISM=; b=mmPOSWy0xIwsjq
	uJ+moDZjXQjk4ET84bXnkeuiGc1Yytvcuq+pv5TnvKiJFId4bDr7/LMW2pFHiuZ79w6JNLZfmDDfF
	JT53lIRXFVeCYQz4L3rPzyQ+p/tPpy8ShO/dE6IqYG3rFlWzDmt8nSekykcttFS+L/B1bPBjzMOUO
	lsuXX2tBdT+FVi5tJWcbQR6cR0aJ3V65hQjXidnC0XX7tflZ1Gv/EIg8OXv22CeWWemW0+1qIk2Ez
	mkXXz2BglujnZuRPjmEK20RbRawZMW4dUI9v85a25izfUWv+QY89n06zheewD3bPfbKQXYgcCZBxC
	864VvZul+o+Vn4f5hjCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5Wki-0001wI-EZ; Wed, 04 Sep 2019 14:59:21 +0000
Received: from mail-qt1-f178.google.com ([209.85.160.178])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5Wjb-0001bk-IQ
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 14:58:16 +0000
Received: by mail-qt1-f178.google.com with SMTP id t12so24691700qtp.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Sep 2019 07:58:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jmpa9CK56FeeW/Q/KWR3hcl8GgZjYEFNX+4GrUFmSDg=;
 b=N5DpzLfgkVLZpNnwejkRN8PabqDfzKNvrMHLpgCf8uIUu0TjOQQ3eNGdzBAifo2MR1
 0/GNsbn8WaK17Fb6GzFTDF9ypsFTnNmpabVKzfTgTb0jjiXtNHP4YX1nPu7RAt818553
 2KjS5IyWgmjZUSYTr3qROVSyH+AnBEf+eRGBAGixXAq3DYPcHdERIHYrOZAmhPw5wp0/
 CWkfU8MzoIlNWE/VEB+HdyT77Mtqt6Mgiupz4HJ3CFW1do8jxXz+n73NGSo9LH2Yiijl
 hc0WS6BMLlhC1tXPlES9B0eAEtguDhI48R1qWX7a3FlGA4iakLlMGyOzwZMnC60ltLJ4
 b49A==
X-Gm-Message-State: APjAAAUxqQ3kh2vPbl0P3Pq8QZEzs59H4K/VWbwPVkdCpdTVm31Hxnxf
 DDxSuSOaN+sM09hiamIg2axNe9IIyXbpRREKaQ4=
X-Google-Smtp-Source: APXvYqwgr8s8dY0FJFv9G1tq5t9EJRnkvoFiJ85FpVWaGp/pddjKQBQwHCJkncrg4c4h2aKZW5q2TmMJAfrAYKsm6PY=
X-Received: by 2002:ac8:32ec:: with SMTP id a41mr8720335qtb.18.1567609089877; 
 Wed, 04 Sep 2019 07:58:09 -0700 (PDT)
MIME-Version: 1.0
References: <20190828151754.21023-1-nsekhar@ti.com>
 <20190828151754.21023-4-nsekhar@ti.com>
In-Reply-To: <20190828151754.21023-4-nsekhar@ti.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 4 Sep 2019 16:57:53 +0200
Message-ID: <CAK8P3a2H9BkAaGMkH_RQd7RmbGWOv2+RgWkGuOHkrQy0Tui6VA@mail.gmail.com>
Subject: Re: [GIT PULL 4/4] DaVinci DT updates for v5.4
To: Sekhar Nori <nsekhar@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_075812_103648_928CFCB6 
X-CRM114-Status: UNSURE (   7.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.178 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
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
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 ARM-SoC Maintainers <arm@kernel.org>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 28, 2019 at 5:18 PM Sekhar Nori <nsekhar@ti.com> wrote:

> Contains a patch to switch to more generic compatible for SPI NOR.
> This helps SPI NOR to work on newer board variants.

Pulled into arm/dt, thanks!

        Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
