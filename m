Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61E0F18F4C2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 13:36:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=H9oIePFpKT5MlOPiN1znUF1b/2aUrU1H2ygnyTrqiMU=; b=qZ+XpgSLzDvXCd
	2juHYEolvfLSYC7FB4h/oPNoiTmKO6Z92A82/0Yom2Q4/qXr5A8EWCvzZ9VtLVWXtoSXbgBHBDEoT
	s1c0bP9poCuPMxPMNaZXhVzMDBg9j9SgYQjop5KAfAa3qZoWoh7XxIwdoBqVj878ZOA2VGW+Mworo
	O7hAzhhYMUy3+bmnTYLYrVw5ZzUp76EzpCrcOyKME60KWSD/irsjl2UrHwo8WpQg1QZvz3Yc0q5yO
	5+LrROiSSvQ5652Cxicy5dnPi6YrfETpxEaGfHySP3MtLyxoM2sU+7LS5x34vM4aPe44DmXs0tbJT
	bXHHPQFnF2baMGl3LmTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGMJD-0000P9-OD; Mon, 23 Mar 2020 12:35:59 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGMIl-0000Dh-BX
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 12:35:32 +0000
Received: by mail-pl1-x643.google.com with SMTP id a23so5877327plm.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Mar 2020 05:35:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=VzwPSZbs06tTKNRZDvRedEakK8DwlP6wfcMOmcIPDiQ=;
 b=YUvXg8JeKwhErLrKCF1xiN6mn9vENO+w+J9yWrzvE/FIO5ls7p5oPerFSlcD3H9sIq
 OeZO23NJjY60VCwo3rzZoSPD5vd3kltarou47rqy8q5xQqCTAP9qjSFBj7lOaHFxvSfu
 SWz8JCaZ8U+bplzJApgAtEp2CHp8wXVn1/Jw5R9fippvB0z0W7muyKthEPT1KyPx3gWG
 agHVqpB5uF2qG69Q6GfUydSdoKsRMjmtxMMometkHMxsBLyvc0D+BCC47GnzJIXbClNW
 HsuJt1bCdMWbDk+gglWuybD2XbIPLc1irLXl4Xjz0yosrfyTQEuCNH230M0aqu2upHEN
 ptFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=VzwPSZbs06tTKNRZDvRedEakK8DwlP6wfcMOmcIPDiQ=;
 b=IA/JCvGfKezg90wfM8NUdVfymUyQGw54/ZhOR3Rywc/gGJ6oKKod7A/qcvc2Imu2HM
 bJwTB8EwYNs/9xgMc+/iO8WeBnpem0RX4zGQ2rWmZrm+DehTrM1bqIBH7cdnJA8IakQo
 M85ZDZ+6MmUKRbTFZ6g81BqMyJk++pkDgMJQ9rLT6kU8q5hRYJtm8J/Hkwyld+XRf/cn
 H4YUfT99u6bgEHZ/JG821nRUnAmhZGUCl0+B5cvBUWR6g9VYIGV+ZfLKGoKCWhj4EVau
 zHN9rCMhSxaeAYJKX8g56Uv3QKrOk6LAhvFFgpjzXp+hdZuZoTJIXXqnW2APZnXK3lxX
 ohGA==
X-Gm-Message-State: ANhLgQ0vTanrT+Qj1jVVn70XC2dmI3AQPNdOuzXD8a8VKOba1j/9DXKB
 sv5my0yzwFVcjgfW86J5Jw71U4QE
X-Google-Smtp-Source: ADFU+vtarkTB9uyKT4ILRH3RXgRnkAP3/KXJ7VJXqWayfL97rEDtMrQGje9p4tznojK1PkeJy3F5/A==
X-Received: by 2002:a17:90b:908:: with SMTP id
 bo8mr24900638pjb.74.1584966929847; 
 Mon, 23 Mar 2020 05:35:29 -0700 (PDT)
Received: from mail.google.com ([149.248.10.52])
 by smtp.gmail.com with ESMTPSA id a2sm12229487pjq.20.2020.03.23.05.35.27
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 23 Mar 2020 05:35:29 -0700 (PDT)
Date: Mon, 23 Mar 2020 20:35:26 +0800
From: Changbin Du <changbin.du@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: Two questions about cache coherency on arm platforms
Message-ID: <20200323123524.w67fici6oxzdo665@mail.google.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: NeoMutt/20171215
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_053531_414321_60565E0A 
X-CRM114-Status: GOOD (  11.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [changbin.du[at]gmail.com]
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
Cc: linux-kernel@vger.kernel.org, changbin.du@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, All,
I am not very familiar with ARM processors. I have two questions about
cache coherency. Could anyone help me?

1. How is cache coherency maintenanced on ARMv8 big.LITTLE system?
As far as I know, big cores and little cores are in seperate clusters on
big.LITTLE system. And cache coherence betwwen clusters requires the
memory regions are marked as 'Outer Shareable' and is very expensive.
I have checked the kernel code, and seems it only requires coherence in
'Inner Shareable' domain. So my question is how can linux guarantees
cache coherence in 'CPU migration' or 'Global Task Scheduling' models
wich both clusters are active at the same time? For example, a thread
ran in Cluster A and modified 'Inner Shareable' memory, then it migrates
to Cluster B.

2. ARM64 cache maintenance code sync_icache_aliases() for non-aliasing icache.
In linux kernel on arm64 platform, the flow function sync_icache_aliases()
is used to sync i-cache and d-cache. I understand the aliasing case. but
for non-aliasing case why it just does "dc cvau" (in __flush_icache_range())
whithout really invalidate the icache? Will i-cache refill from L2 cache?

void sync_icache_aliases(void *kaddr, unsigned long len)
{
	unsigned long addr = (unsigned long)kaddr;

	if (icache_is_aliasing()) {
		__clean_dcache_area_pou(kaddr, len);
		__flush_icache_all();
	} else {
		/*
		 * Don't issue kick_all_cpus_sync() after I-cache invalidation
		 * for user mappings.
		 */
		__flush_icache_range(addr, addr + len);
	}
}

-- 
Cheers,
Changbin Du

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
