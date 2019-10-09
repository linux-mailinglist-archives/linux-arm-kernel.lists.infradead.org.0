Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A92FD1C83
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 01:11:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dcupMzGpHuTcLBKcqdsUHFmch3z3ojlByLo1gZZSvdo=; b=hpvw4OgYtR0UoH
	YwRvX1jtzbO0dTgDKqgIKkqz5oZyuZSRo1ZMutMHFsKgjrZIa+SnceKaZpkViJSddlKRkegpFVoao
	WrUV9CkmMxq+smdyd5ofPEyuNYcPq8NtZ5daA5kCp1TSW4ADaLaUTv76bpZ4pqSwZDQ8Odp0ECId+
	YB+VdoABvSkZdNb4lM6LnMCQboXtVtz2aw7xMUeZR1wWnFmMoNZIVH7b0kMBp+v7IRBrCINxobQIE
	uudwqP7x82m4gOPy7A5M0r/28WatNIeAy+IKAc3F2iDY+PYBWJ9H0VMTelJ0wumbk7Wgmcova2Zpy
	0/QMAszcMGz7oGaF1Bgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIL6Y-00057e-6t; Wed, 09 Oct 2019 23:10:50 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIL6I-00051d-0y
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 23:10:35 +0000
Received: by mail-qk1-x742.google.com with SMTP id u186so3850643qkc.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 09 Oct 2019 16:10:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=netronome-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :organization:mime-version:content-transfer-encoding;
 bh=PnjQOHepBuv9rYKnDUFewaU2wDCjjihpShjTxB7TXsk=;
 b=RsKHCYwlEK2MnPGOLw3WfXus/DDmivqcNdxalAOy3hlZ/qAQSBLq1JTB/kxeHQl1W3
 fEwIP+vV4b7VINYF3fxCLVX+ZDMkWBpk33nzXxBQmUpj4mWuG2L1jy25vxDQhUPJNWnI
 OLb2oVqDMOyZgZQyDg6NrudDbB/NlkOEj+xKnjOlzXp1VGahGeHGqixJ8EuWEWwbe/id
 YlS1JRQZpPp/HilLmm9nFyT5AF3dNB/7dQo58dqWYl5hSu2X7bxBDOVqcajUu1Et5uAU
 UjiSceUeTP8BfdtMBu2nPvkOfXRv/+k5TJe551yvWspUt8b5fhRsLOf6cs+3Uwk4mvNl
 hK3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=PnjQOHepBuv9rYKnDUFewaU2wDCjjihpShjTxB7TXsk=;
 b=VBmMvV5YoIWa+cdQt8cSK6mmsJ2UK27Y05h7Pit+aKKKZ1hujjrh7PpiYqW74bOcTz
 DyxMCaoaqWorO3jQJXtQB4TuEQ/RNBy5QVWTK5Ki017Bva4agWv0jKb6Ktwkq1/i57Fl
 C0MM8R/sqkjsZstMXg90Zgr9/z5/+rA+HWIXJXlHqyML8nB9oNGSGDf1ZbkOLU01Cak2
 /hYu53QjYChD0HvF6c115v/tudFXRCpzgCY8ZaYT0OhpMSfInr4ZzFdZLfWy9f26Sb6S
 e6EQ9990uFqNtaxKKNMMs6KK8eB/0dtwrzpzfHUmRYoaAWos8GOq6FkUKuY8w6ckWAj+
 QYMg==
X-Gm-Message-State: APjAAAXvtSE5ToNAprTIKDXj1PTjcjZfA2uUi1maOl8JgK8i/4Spl+Wv
 +yZk9D20NzAKJgz1sXXeOU4GpA==
X-Google-Smtp-Source: APXvYqzDsg7VvPjwvTLuHucNP0B1UJPXSz1g9Ec4z5pbH0OhF3aJ6PEN0n9s/5rnpedoNj2WEr1nyw==
X-Received: by 2002:a05:620a:1355:: with SMTP id
 c21mr6444676qkl.288.1570662632760; 
 Wed, 09 Oct 2019 16:10:32 -0700 (PDT)
Received: from cakuba.netronome.com ([66.60.152.14])
 by smtp.gmail.com with ESMTPSA id m186sm1709799qkb.88.2019.10.09.16.10.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Oct 2019 16:10:32 -0700 (PDT)
Date: Wed, 9 Oct 2019 16:10:18 -0700
From: Jakub Kicinski <jakub.kicinski@netronome.com>
To: Antonio Borneo <antonio.borneo@st.com>
Subject: Re: [PATCH] net: stmmac: fix length of PTP clock's name string
Message-ID: <20191009161018.3b4919cd@cakuba.netronome.com>
In-Reply-To: <20191007154306.95827-3-antonio.borneo@st.com>
References: <20191007154306.95827-1-antonio.borneo@st.com>
 <20191007154306.95827-3-antonio.borneo@st.com>
Organization: Netronome Systems, Ltd.
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_161034_090141_0A59D72A 
X-CRM114-Status: GOOD (  13.29  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 Jose Abreu <joabreu@synopsys.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>, "David S.
 Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 7 Oct 2019 17:43:04 +0200, Antonio Borneo wrote:
> The field "name" in struct ptp_clock_info has a fixed size of 16
> chars and is used as zero terminated string by clock_name_show()
> in drivers/ptp/ptp_sysfs.c
> The current initialization value requires 17 chars to fit also the
> null termination, and this causes overflow to the next bytes in
> the struct when the string is read as null terminated:
> 	hexdump -C /sys/class/ptp/ptp0/clock_name
> 	00000000  73 74 6d 6d 61 63 5f 70  74 70 5f 63 6c 6f 63 6b  |stmmac_ptp_clock|
> 	00000010  a0 ac b9 03 0a                                    |.....|
> where the extra 4 bytes (excluding the newline) after the string
> represent the integer 0x03b9aca0 = 62500000 assigned to the field
> "max_adj" that follows "name" in the same struct.
> 
> There is no strict requirement for the "name" content and in the
> comment in ptp_clock_kernel.h it's reported it should just be 'A
> short "friendly name" to identify the clock'.
> Replace it with "stmmac ptp".
> 
> Signed-off-by: Antonio Borneo <antonio.borneo@st.com>
> Fixes: 92ba6888510c ("stmmac: add the support for PTP hw clock driver")

Applied to net, queued for stable.

For future submissions please indicate the target tree. Networking fixes
should go to the net tree and have [PATCH net] in the subject, while
normal patches such as new features and clean ups should be tagged as
[PATCH net-next].

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
