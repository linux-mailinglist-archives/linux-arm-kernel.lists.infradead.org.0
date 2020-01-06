Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D72841316D8
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 18:32:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=892YPt2ZHjfJTzVmog72/WqInAnlBQ0C01tNyE1asmo=; b=YjlpSYoix3Ceug
	r5IhOV91C7oDJl7Iy40nyGIni4PiBGy0W8k7W1gLaPcq+qVOgJfWXuvi53kH1WHXCp+Gq1wtnYRl8
	+98Xg73R+QXHD7Rn78I4OsbzHydBjiduQww1dHe2hSdS2cOKI5lXGfyYDWWDO0rsJaqqWGkYmOMc3
	hUvBky1nru86jY1n2iTXrJWi1P/9Sitg4DNONN+XBK7l9uLOwZI/22KDxoSCunwLNRdiAW+WfL7FU
	s/SZPK8tgGTyBMbBMQGpfkBicDTBr48T7+qV0Hw4BsBCN+dehii59kE+CcOo7IaO7Ng7U/WQCLdFj
	EViqOQOVwNVeySL1RMwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioWEY-0006Xb-Sc; Mon, 06 Jan 2020 17:32:06 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioWER-0006X2-MN
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 17:32:01 +0000
Received: by mail-lj1-x241.google.com with SMTP id o13so40315289ljg.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Jan 2020 09:31:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=xFu7eCg3yS+RsR9D/Z3sZGznS8kv1kY8aO9qxzERxms=;
 b=Em55WpmAzW3ZOnLXJfcLJha9SqS5Qw3j3/OKYBG0xj5al9+1IAuNNmcweHm4UeqB4g
 5DdRMU7eajNI33LhOrK08iJbl3aNfx8ukg77VVjxk5Z8dDS2FzqUnynl5p+bsRXi8L4D
 YHgoqi2NhzxYuP9DumZYPhMr6OOJoue43ZaT7kMyHXq5u60RGafl7MkvGizstBg7tuFo
 awx/t6d2FAYUIHmY8OFcAusvXq9tnxHxYc5vsasdpcW1XBAIrFqXi3G/FctOP14SmcOz
 4dtnis7T7rCG8YC0pCwLSoSSXEStyBiIL5kJmtsBgLDJ+ETxsWYYrPzm77b5NXbzqril
 B7IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=xFu7eCg3yS+RsR9D/Z3sZGznS8kv1kY8aO9qxzERxms=;
 b=VEM3af+5npBSFEmo6KkyyDDipe4ccBmIO9RkbnS2PXneB5/mYbtyifzfcb3dKc9B8d
 k3chATLoiE59EY2x44RzCJusMr0Po2d18ApqnC78xLP3qLqLPNQ78d6Y52FCWTtOKRT3
 rZBUfMyrOEMbPzljkWZBCu3wDV9kn5tQrQDFmvFCy/ICXxGJdqS+IFR7b+PxXwiRnerI
 MENLByo2frchsnGYroHX9p82mG3S2nPW1HbCq/E/6JYVqatIHXB8+zxnCMJPjBUcLUNq
 J8Y5KkmNe5PMU4G8VQB1xhSqSJIcrOzQGrxrCFJZ+lYAS6LHSQDUW1My2/H7lvqWD0Mk
 Ef8w==
X-Gm-Message-State: APjAAAUES/OPA2Xg830qtGXWjBGHR9L57k5iPuRRYh6xmI9RBEVK0wXy
 OqPmHIQQo/vVNo5CyYJTLnjQow==
X-Google-Smtp-Source: APXvYqyj67w8AuhfPdbkEgB1bCmOYwqDVq9nc73PWsbef+neE5Y0RW1nE8a6Mkhduwqz6oxuzAIgfg==
X-Received: by 2002:a2e:809a:: with SMTP id i26mr59271167ljg.108.1578331916456; 
 Mon, 06 Jan 2020 09:31:56 -0800 (PST)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id s1sm23576228ljc.3.2020.01.06.09.31.55
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 06 Jan 2020 09:31:55 -0800 (PST)
Date: Mon, 6 Jan 2020 09:26:08 -0800
From: Olof Johansson <olof@lixom.net>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [GIT PULL] cpuidle/psci updates for v5.6
Message-ID: <20200106172608.63qhvwr5b7jsmxmg@localhost>
References: <20200102160820.3572-1-ulf.hansson@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200102160820.3572-1-ulf.hansson@linaro.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_093159_871410_0DE1A589 
X-CRM114-Status: GOOD (  13.96  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Arnd Bergmann <arnd@arndb.de>, Kevin Hilman <khilman@kernel.org>,
 linux-arm-msm@vger.kernel.org, "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, soc@kernel.org, arm@kernel.org,
 Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Thu, Jan 02, 2020 at 05:08:20PM +0100, Ulf Hansson wrote:
> Hi SoC maintainers,
> 
> Here's a PR with updates for v5.6 for cpuidle/psci for ARM/ARM64.
> 
> The changes are somewhat sprinkled over a couple of different directories and
> there is also dts update for MSM8916. The main changes are in drivers/cpuidle/,
> which have been acked-by Rafael [1] and Sudeep.
> 
> If you have any further questions, please just tell.

What was the reason to bring in a dts change in this branch? Bindings should be
stable such that old DT contents still works even if drivers are updated to
support newer attributes, etc.



-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
