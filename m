Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 034BEF1DC4
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 19:49:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Obf7Ln4wHWdXxqFoU1VSZSUJYQXDQLY0ZLSljAr+KxA=; b=LDbwDnQgLOWKlO
	PKDp7pewupEyseIqKQs/NHqZ7zymyF72NiRXkPvMfqDl0Gv8qGVl7QnxrqGkRKDZJ7EH9CQh4LCRU
	pSi22+sixbNcGl0lYPGREUuBJ6bdKZGQRtmGYFZGy7ck8arwoiACGJBvjCjCOZykt4e0mdWthI16+
	cbZjmVw6uLfA27wTeocVTsSwcm1rA2Wf4sg58+bClOKhfKsZ8T6gyTzY/J5nKF7kmqk6F9AAQqZyL
	YRBXYLdP6iYjbFz9+XIOHVr49QgbxwMW7bmJia9ZxW26mgV2ijWss0em6oMdMFR6ar02PUn3dh/Dg
	+j6l2BokUZ0sbMso/XTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSQNG-0000VX-2U; Wed, 06 Nov 2019 18:49:46 +0000
Received: from mail-pg1-x54a.google.com ([2607:f8b0:4864:20::54a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSQN8-0000Uh-SK
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 18:49:40 +0000
Received: by mail-pg1-x54a.google.com with SMTP id u20so18310326pga.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 Nov 2019 10:49:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=iuhKlytJBZM6z4JfLv4nGpswwtwyGQLqGn2PJIaoWCM=;
 b=hBcR4sd/6XYZVq594jdQ+i79/9ZXlBpq2iJFRWLOmD3spNkjRNe+mVflTyHP8Q9dE+
 u3MGAM0kFdZVliTFaJ6Qk9/890kOPzZbf2e/gSGu/ItaVXE1P1pokh38IrmGSc4mGHwK
 hh91R71Am9AIlz9pdsTW5DBI3EBeUPP2sdwOUIXZiWEcOwWd16+5p8KPTuoaCPmiyaS8
 MMTLvoKIqB19NjchLW6yehriOwyfxo0Dw61hP/zAK254hzGmC3yxOpx2QxmKpfYGIehp
 Y3fkduB2rrSbrS0JadmAg1FM16FV5yzhUozU8h0fgl19HVmEXr8Exms7TV/i5xKXmiJh
 ZXOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=iuhKlytJBZM6z4JfLv4nGpswwtwyGQLqGn2PJIaoWCM=;
 b=kA3nb0mn/RMNyJiuvqir8MWZILmByIo6NoUlQvz+0Q2LLdKG3yOo4qHMYcs2SyY76V
 pn3psKfnosP+86h2FWDf1Fihh7RHuXF7a63xKGc4zA1Y8IcH3+0MEC5MbC4q2N1V+dw4
 LK9OFrMUjtUB9l9j16dLxBJfrl7hfPAxz9Ar+ygRRbCzgE+qLER8wHndCSNW7LnNX1x/
 RuA10kw7dw498vqxOdldNU39Wi8M1RwmEhDODwknKxnir5zNSXEno/PVWfkJC4iXU8vj
 /nw5kWBMaCBfwE080dZWTgxuM33glc89JYNY/S6ue/hER77TZWbg4H1C7lEWdilZqLrY
 61cw==
X-Gm-Message-State: APjAAAWgVunrgekgWTifIURieV2i+Zk1z9gb8CE/91ncQc9DeFFY2S74
 N0sZkVJZBY86WurFSNGdCPauPW1uIA==
X-Google-Smtp-Source: APXvYqxwRyZ8JO9BSn9Wbg9rolgzDQlfODKPEiZ6igpaIr0m8nKCMYQGHG735BO75tms3/j1xkDgEPQZ94I=
X-Received: by 2002:a63:1001:: with SMTP id f1mr4574203pgl.373.1573066175512; 
 Wed, 06 Nov 2019 10:49:35 -0800 (PST)
Date: Wed,  6 Nov 2019 10:49:31 -0800
In-Reply-To: <20191106115651.113943-1-weiyongjun1@huawei.com>
Message-Id: <20191106184931.200312-1-yabinc@google.com>
Mime-Version: 1.0
References: <20191106115651.113943-1-weiyongjun1@huawei.com>
X-Mailer: git-send-email 2.24.0.rc1.363.gb1bccd3e3d-goog
Subject: Re: [PATCH -next] coresight: replicator: Fix missing spin_lock_init()
From: Yabin Cui <yabinc@google.com>
To: Wei Yongjun <weiyongjun1@huawei.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>, 
 Suzuki K Poulose <suzuki.poulose@arm.com>, 
 Alexander Shishkin <alexander.shishkin@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_104938_940909_68109790 
X-CRM114-Status: UNSURE (   5.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:54a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Yabin Cui <yabinc@google.com>, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Thanks for the fix! I should have tested with CONFIG_DEBUG_SPINLOCK.

Tested-by: Yabin Cui <yabinc@google.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
