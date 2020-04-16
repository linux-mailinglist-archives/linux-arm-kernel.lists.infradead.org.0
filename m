Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A6211AB642
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 05:37:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E3VMyCvm0WBMI9X/4W8VsNt6qIBBvX9wV0W7u6tFpiA=; b=tdzTpbfe8QUR9P
	89qI+9aUeUMuI5nndgzXyItX4knAdn7WTBOv+lHCBcFzyVDsQKb5l1hThcQJIH2X2TWoik7ovDeGI
	VYKc2PqEly0SpcPISr+x/OUebzV1UzjOnpBg1PXW1bDLUAU0P86UTakrdt4BTBWd0aIczkvn4dmdV
	Szh0tc0tIL0yzlx6JIX5kki6hkDpeh9cX1eodWOo9y5lFoqFzGBhuvQQcXQM9aeQGluICQHYm9Ex+
	y3aGpH28cklExp1VBskwKdvjDE0U7AvIlKAU+0NmdOPOW4KE5eZ51pbGDyrSdKlWqI0Zd4qXUa3TA
	mVmDuCiSX0P/kGFFnLLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOvLG-0005MY-K0; Thu, 16 Apr 2020 03:37:30 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOvL6-0005M0-5J
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 03:37:22 +0000
Received: by mail-pj1-x1042.google.com with SMTP id ng8so771609pjb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Apr 2020 20:37:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=LcBjNCK+rf+2YEVvZPZcsG/AeuTYN98gz3c92chJ7YI=;
 b=N62pR58MzOQlhuf1VXzQKfNlkAe28ps2Bt8L5EhPFsX8/ErCuUSI5IhuhLZ9lPMZmd
 4fv7zApE3he/1DhHZan7KuMcZEMWwp+IYjVqAyT3oeHcIKD+PcmeejcO/8sKarT86ert
 QVi6jh6siT+NHR8Jl67jjHMlF8qduOugqkYjke78fFCESRf64rRWcC/EpNPn4lABmjiZ
 I8uMM3aDZK+rsVSzFl+vX0OPtCPq34gp37JaiW/fs+cxMxplqBiELQX6A0xmEi59cq2I
 tlTKyVcR5aGR1O8fMAoQvlaF9ogOD8KHOruF2CG8CAaGbXxdCDiTn4cl4SHg8QUJytwv
 TKeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=LcBjNCK+rf+2YEVvZPZcsG/AeuTYN98gz3c92chJ7YI=;
 b=VVjfbYObwy5qgW78OTmomIBcYFBg7vXqemEJfSPjqfXYC0VyW9zASRYzskvdkvzoAU
 gJ1+3q1+B7lvOCk/X03sWTDvu4i6kekGxL1F7rqaTyWsGThLWuiUljyLSQjwWydgJH0b
 ARhjJ0Y2C2MkZ9qnyBG2dIWx4diCOHev7fAY3nK/C6ZlS9yieYbKn0wfSGTvS8PR/ujq
 GYyVi3EROHwYz15fnHkfS5wyjOnLKfSQxKBp0KCRGb/6jcJ3MQuEjNMLutd0pUERzujD
 yGe2nTXUxKGzugzuETDceuQyanYYJDw2tmTzvD8wMqNfZc0qijDjU1g9zerTsSAkPw0N
 2tGQ==
X-Gm-Message-State: AGi0PuZDMWlvVCPF24GtCvH2vD1gxTfshzzqjnCH5PgoXxMTqSlUcQax
 XubZi2QnlOB8E4ITjA1X5Ve51Q==
X-Google-Smtp-Source: APiQypJxmJr4qhcuXMSJJIMqhW62prSNyh3AQwxU2EaTI1aAzDTg8sr0oneUv2CRNeHAM+Dhf3qzxA==
X-Received: by 2002:a17:902:8497:: with SMTP id
 c23mr8207091plo.335.1587008238452; 
 Wed, 15 Apr 2020 20:37:18 -0700 (PDT)
Received: from localhost ([122.171.118.46])
 by smtp.gmail.com with ESMTPSA id u8sm14019683pgl.19.2020.04.15.20.37.17
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 15 Apr 2020 20:37:17 -0700 (PDT)
Date: Thu, 16 Apr 2020 09:07:15 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Sumit Gupta <sumitg@nvidia.com>
Subject: Re: [TEGRA194_CPUFREQ Patch 2/3] cpufreq: Add Tegra194 cpufreq driver
Message-ID: <20200416033715.hscztwkxie2o5i3r@vireshk-i7>
References: <20200406025549.qfwzlk3745y3r274@vireshk-i7>
 <3ab4136c-8cca-c2f9-d286-b82dac23e720@nvidia.com>
 <20200408055301.jhvu5bc2luu3b5qr@vireshk-i7>
 <08307e54-0e14-14a3-7d6a-d59e1e04a683@nvidia.com>
 <20200409074415.twpzu2n4frqlde7b@vireshk-i7>
 <00390070-38a1-19aa-ca59-42c4658bee7e@nvidia.com>
 <20200413062141.a6hmwipexhv3sctq@vireshk-i7>
 <64b609f1-efb1-425f-a91a-27a492bd3ec4@nvidia.com>
 <20200414054504.e3qn2cnxqur4sclw@vireshk-i7>
 <d6e0eed6-4267-fca9-59e1-02d16e17ff34@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d6e0eed6-4267-fca9-59e1-02d16e17ff34@nvidia.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_203720_720946_C1CCC29D 
X-CRM114-Status: GOOD (  11.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On 15-04-20, 16:55, Sumit Gupta wrote:
> 
> 
> On 14/04/20 11:15 AM, Viresh Kumar wrote:
> > External email: Use caution opening links or attachments
> > 
> > 
> > On 13-04-20, 17:50, Sumit Gupta wrote:
> > > This was done considering long delay value as explained previously.
> > > Do you think that smp_call_function_single() would be better than work queue
> > > here?
> > 
> > Don't work with assumptions, you should test both and see which one
> > works better. Workqueue should never be faster than
> > smp_call_function_single() with my understanding.
> Checked the time taken and its almost same in both cases.
> Earlier we used smp_call_function_single(), but delay time period was small
> in that SOC. In T194, the time period was more. So, this is an optimization
> done because using work queue has advantage as interrupts will not be
> disabled for that period.

Hmm, okay, keep the workqueue and mention the required details in a
comment for everyone to understand why the implementation is done that
way.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
