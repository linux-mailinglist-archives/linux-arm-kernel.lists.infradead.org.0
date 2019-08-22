Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79E479A29A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 00:09:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=100UxQrFFdWPbVRpfsz/tiE046l5Ie/HYNEhaz7dNN4=; b=KRc
	vyYWZ522BYQqh9P18HyhwgRvkRMGZF+RndDN9Cnuco3Js9fonn7cpxCa8oJ/7k0xVEFhSfCo/WKE7
	ByLQHfhiyh8LvwEiwFVbAH+08wlepmHLXyXpN19VRjl+UlMz+nL9qtCHVtoR+0ezhJ0DcPaYXrg2M
	TdaTHk1Mp88dcfOOQ4yHTCZWbxZcN8/2B7yP8iVD2McMKDDGl3xqgZYelfrF1E2pPfs0dEkvOmHEb
	6ip743AEoIH6IdXqPhPlX1nDNCvXH4/yWQS0XjPrFKXtJFaBv/VFp0uKJFNkaJz26J5apMNej3GAW
	bZkhjZAQ2dlJIj6OVUMWKT5fxlVSDxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0vH5-0001XN-Ee; Thu, 22 Aug 2019 22:09:43 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0vGh-0001Nf-VL
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 22:09:21 +0000
Received: by mail-pg1-x543.google.com with SMTP id n4so4490809pgv.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 22 Aug 2019 15:09:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=uYgPzTJBSidHw5rofgv1d7XIJLrP8BBx5dx0dnIxLaU=;
 b=Eqp/T0lJX6voDeerzbLZz2z62udbQ8JbYtCoxl8fpZ/fehQ1JxGVv2NF6u/4UU6IML
 jGNNZ8XgkZucbJhi8OK9rSR4FaCOTDhu66iVkp5EVfES9nFIA/ojfqTtmpkgH6+F33a4
 pEKfXcRnXzxYICeBAr5B7Bnz2LMQvQpmm5kpSRPZEQw05r8SZqaAbw0CpWWXvj+vBNkk
 P/iLorr+Oxh8THpeNuUwDahCrWTELDopP3a1jdJkYixY2QtkY0W8ttI4/RvmErfhtAaX
 B7aeQIa0StrASQKuVIBt+Z/035I1APcYvmcrZrUonofpIOeIpgNpRF5OzRESz/6QaRKk
 qyCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=uYgPzTJBSidHw5rofgv1d7XIJLrP8BBx5dx0dnIxLaU=;
 b=jPZtQzpY082uR4sB7j5jDG3kE41d1t8KAVl3LOwUFy1HmOYNLshDN46vcVHPscS2U/
 asSPeq0cHZT/Ii80li/nMp8Us8MRbcpZdTYNb9L0qMhvEDQH3c7Qx7axZ3kR0iqKLDjH
 eUd0W4McgUx0KRSTjOk9G3HQavKaVbn09Ul56D5WIOfQTZcvfdIO2oZncbMibo0H9IJy
 FlTmreWXh6AZgKOv25YbJmNovqQEfV0UDfEkiO1+g1iru/lOTGizqrFtMkJhtG3j5Lo7
 LeDTot1E82mC31Qs8nEfnj7RvQIzNAmDnBqNhbZ6A9eIrG4R9JJEy67HHx0uZ7t/EdDv
 WfHQ==
X-Gm-Message-State: APjAAAV/agVl4QQu88Azb0+Nyy43SD7/B1cIAkqDymKMw29YQpFiPs5T
 soUJx+colhd7apkEdXmJLGVHGg==
X-Google-Smtp-Source: APXvYqznJGjtkxMx+LPgYTr2KV51e6oE+5OZSSDWV6Sob4CnwVBizgP0XyiDvzhwRVVxEkrDYljWFA==
X-Received: by 2002:aa7:934f:: with SMTP id 15mr1555731pfn.22.1566511757674;
 Thu, 22 Aug 2019 15:09:17 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id s7sm377432pfb.138.2019.08.22.15.09.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 22 Aug 2019 15:09:17 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: yabinc@google.com,
	suzuki.poulose@arm.com,
	leo.yan@linaro.org
Subject: [PATCH 0/2] coresight: Add barrier packet when moving offset forward
Date: Thu, 22 Aug 2019 16:09:13 -0600
Message-Id: <20190822220915.8876-1-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_150920_011698_D86F264E 
X-CRM114-Status: UNSURE (   8.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: alexander.shishkin@linux.intel.com, linux-arm-kernel@lists.infradead.org,
 mike.leach@arm.com, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Yabin,

When doing more tests on your patch that adjust the offset to fit the  
available space in the perf ring buffer[1], I noticed the decoder wasn't
able to decode the traces that had been collected.  The issue was observed
in CPU wide scenarios but I also suspect they would have showed up in
per-thread mode given the right conditions.

I traced the problem to the moving forward of the offset in the trace
buffer.  Doing so skips over the barrier packets originally inserted in
function tmc_sync_etr_buf(), which in turn prevents the decoder from
properly synchronising with the trace packets.

I fixed the condition by inserting barrier packets once the offset has been
moved forward, making sure that alignment rules are respected.

I'd be grateful if you could review and test my changes to make sure things
still work on your side.

Applies cleanly on the coresight next branch.

Best regards,
Mathieu 

[1]. https://lkml.org/lkml/2019/8/14/1336


Mathieu Poirier (2):
  coresight: tmc: Make memory width mask computation into a function
  coresight: tmc-etr: Add barrier packet when moving offset forward

 .../hwtracing/coresight/coresight-tmc-etf.c   | 23 +---------
 .../hwtracing/coresight/coresight-tmc-etr.c   | 43 ++++++++++++++-----
 drivers/hwtracing/coresight/coresight-tmc.c   | 28 ++++++++++++
 drivers/hwtracing/coresight/coresight-tmc.h   |  1 +
 4 files changed, 64 insertions(+), 31 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
