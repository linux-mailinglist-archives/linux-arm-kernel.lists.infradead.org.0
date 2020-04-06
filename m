Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC70B19EF5C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 04:47:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aWXz5tqUAJpGfScuvc36PID41+jj+F5WnihQAmVcEB0=; b=Unv2kFcnDVycgV
	UzbpZCL/PtIu9a5oKY9yri8SRZHyn1pfdC9wxuN1/EJYIc51/1idZJWL1EfOrMDH7vuNgWpmfn0YO
	ZGubj8TDcIRaXqLMabpydVt1cstKKD2qie0KBvuKQEZTg1mD2qjHhqhASGvYgBKVfnq6XylbQfRAb
	Scehum2JRoWXZyPzI89y2iiRusri5v+wX+etp+rUGoxAPMYRYrsOso2ej4rTRu0XI/wmwd6MZNwSg
	CVfpRkJ34d4wrMISbo8veX3vw8hLXuVoOT5Bo5T7f6edI4K/+xZEQUWAzSno6bZ6WXgcZ40JG/nDk
	VT7pja09w8hxG8x1U0xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLHnY-0005OK-9s; Mon, 06 Apr 2020 02:47:40 +0000
Received: from mail-pj1-x102b.google.com ([2607:f8b0:4864:20::102b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLHnR-0005NQ-Gf
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 02:47:35 +0000
Received: by mail-pj1-x102b.google.com with SMTP id v13so5885623pjb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 05 Apr 2020 19:47:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=L6SxNTH0XCWDO08MCGA5S5MO0ksHJfV/AHJr6LODNPc=;
 b=IU+Y8FC1HgrRO7zZYpgPFhW60uh9eThxh3QDAZ/VQTqk5dBvwQM4tQvblvHBTfbhRF
 h5AWfiNmRda3SCFQCGzNB2HXzyV1DFAcZjmV4utwJ9i5sYoxLC4pvfqTDsGXWRanOHM5
 IjNO//0yKYBuV+cERjO3wVLA28MJQ0BNzhiPmsepcPXuetITV+ToQoLYfNAjgACND7Yz
 /uwVwFCTH4HxhtrAhjKy0sXh885LhUVWkw+c0ljeN9IellHp20qkJ+yJKMphn3+DBuoP
 aw0UVSx6CLLk5wsUnisR1KTsqJG30mclb76p3JOwW8NgevbPP42EAhRhwsUhPPAROSz3
 Ej0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=L6SxNTH0XCWDO08MCGA5S5MO0ksHJfV/AHJr6LODNPc=;
 b=mDxX3C97+codVGPEt2fTp2xtMkV1D3NV1O7uKOqBrz6e7aHe9qreHtMPRc26gcPvo0
 bHUGtYkLHt7F5sBtIe5K9AYIf1Vl3BtqK5AnvUlJTACIIdW0PZN24pIDsGn/hF835z9h
 T0VDJOROHgPI6IzZ4IPezEhOlpABOe7blxGxgAWtaU2hwQoD7SVplzgYZCGLjIVpKT/p
 bFjPngBwuVuAi1yvM3PSgLemrlZBI1Rc2mMHcgFgRHXYWswwoKviJS2/Q6dwNgUB+TiC
 oo5iWgcxh6aNrg3ojoOU+Ss3NPmt+22dUu4Nfa8Y3SpZrUzznX1yYWshS27aZflJSWcx
 6Lyw==
X-Gm-Message-State: AGi0PuYkyan9TAI6iHdaSxk89ZYc25vnpn0gWUZuKwrb9igi8Hn/oo14
 OS1vv8nz2VnIwRvGpFRpffQrNQ==
X-Google-Smtp-Source: APiQypLMEEARny7oaHdWXifOwzMJe8n167aqCyuBqUeiCXSRo4rYgte0KaxMXgcl8IifcQeVl/Iqhw==
X-Received: by 2002:a17:902:7485:: with SMTP id
 h5mr18244419pll.205.1586141249322; 
 Sun, 05 Apr 2020 19:47:29 -0700 (PDT)
Received: from localhost ([122.171.118.46])
 by smtp.gmail.com with ESMTPSA id b25sm10385040pfp.201.2020.04.05.19.47.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 05 Apr 2020 19:47:28 -0700 (PDT)
Date: Mon, 6 Apr 2020 08:17:26 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Sumit Gupta <sumitg@nvidia.com>
Subject: Re: [TEGRA194_CPUFREQ Patch v2 0/3] Add cpufreq driver for Tegra194
Message-ID: <20200406024726.sbtutqsv2t2p2gkg@vireshk-i7>
References: <1586028547-14993-1-git-send-email-sumitg@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1586028547-14993-1-git-send-email-sumitg@nvidia.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_194733_622714_3C9F7AD0 
X-CRM114-Status: UNSURE (   9.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:102b listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: bbasu@nvidia.com, linux-pm@vger.kernel.org, catalin.marinas@arm.com,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org, jonathanh@nvidia.com,
 talho@nvidia.com, thierry.reding@gmail.com, linux-tegra@vger.kernel.org,
 mperttunen@nvidia.com, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 05-04-20, 00:59, Sumit Gupta wrote:
> The patch series adds cpufreq driver for Tegra194 SOC.
> 
> v1[1] -> v2:
> - Remove cpufreq_lock mutex from tegra194_cpufreq_set_target [Viresh].
> - Remove CPUFREQ_ASYNC_NOTIFICATION flag [Viresh].
> - Remove redundant _begin|end() call from tegra194_cpufreq_set_target.
> - Rename opp_table to freq_table [Viresh].

Have we concluded the earlier discussion already ? I posted some
questions where I had doubts and you just answered them and posted a
new version. Please wait for the reviewers to have a chance to reply
to them. Your new version may be okay, but still we can avoid another
set of patches which may be wrong.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
