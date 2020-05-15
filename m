Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9EDD1D4D7E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 14:12:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p1KOByCXDLr9BiQoaIpArqYBAUTk+wfkJQVQqEEzNEM=; b=Qq+RrkA3IIjt3T
	tgIEb8U0cmNeZjv/u6UWEjPfYgpX7TjDrWwWWWW21QJfY9cS8sI8SGW4pzCLyRXp8MmggngQMuQaU
	Yy876peAgJoct+mFUJcOuNL+oQF4hU1E0YTGYtXxY+r6i3wGdRum+HhD0MwspBMXnlcfu8mLOIgqu
	nDagqdCK5NPtpquO7FxU9jifSg8fpXkFZa8P/Bmg9hyTW6mx/qsCM7GeOYJWAuFV86cGqH8WhIh96
	USKCvLgWDma2Eu1WsY2sp8pUCUFhV+tiDX9hOyANG/EzlHa6Zj3mON22cJ8owe3PW479MozGbtXXw
	BoDq+dvB7vjudyVfj1+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZZBt-0007oV-Rd; Fri, 15 May 2020 12:11:49 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZZBh-0007nz-PV
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 12:11:41 +0000
Received: by mail-wr1-x443.google.com with SMTP id l18so3269981wrn.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 May 2020 05:11:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=agk/UV20FKJb1a9Ae3ltu4rCzUn8RKE17XB/I2juUP4=;
 b=JAA3HOUQkZNQ5tgh0mBb8QhPLgNWLKouFcUBPxDtnimi/m5pBrCEkujCkn9WxFBeqo
 ErHwhzIj4ddXEo7xzOPe8Rc57zZOcaT94w0056MbMo41lOLkETzul319Ley474NnQh+F
 8bdvV49MZN6vQczqFvGdH1QS2jXgL+rTLszQRyjTnKs6V31vhKqdKkuosC0DpM/KeXbD
 TYl2/1AuayujwtiK321gyz6laoHA/yv7w8eYv40EaVs+H7ItH1G+InjvaGmhzUyWtZLW
 ZKd33niBQ6nWQiyCZ7sjsEnWFWlKgmv37OKJCdNGO2o16ayD0NbkG9SzJzxIXBUPVD5z
 uEDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=agk/UV20FKJb1a9Ae3ltu4rCzUn8RKE17XB/I2juUP4=;
 b=nW0e831l6EAiw8+dSnsvayk2x3BsOI5gK7qOV4wcqCxgk9KzhXSLG0r8ESvt6Jfd6R
 wLdPkhPcmoo2cqrPOa88FxsTIxHOapguQFFBo8jRr1JiQ8/e93+1CpaPWzpqklVR5DWP
 LUskneXwUHsBygeCPIDE9PLpJjDbUXOPcpuHy04BAHwSB5bf3lqIvGERfTCEv4kiHMOy
 Azn1XSr5jN0j7FS7oFF9cU75Gm2j0RxORmIBIf357c4dBeoYbdY5v0qyzSVXmi4wEs2U
 bylNVzqzXVuqE4asHFDEws4pZ3UOr19up8E6xiNZogVZ6cg3jVOEyg/rCsv9m3S4yBoJ
 LWfQ==
X-Gm-Message-State: AOAM533Bq92j7chpYaHz7EpB1/c4sMejiCEBT8SmKXEAAST5u8D/2Wua
 3m+YmeNLPcJVrDEolCWJgRufXQ==
X-Google-Smtp-Source: ABdhPJySrffUnSNQVxZ4+5EcEPpnx2BcRy+rX17KVduf39fOlhtS3S6VeNRSKTYDyFwHQHp61SI0Pg==
X-Received: by 2002:a5d:6ac1:: with SMTP id u1mr3883139wrw.319.1589544695178; 
 Fri, 15 May 2020 05:11:35 -0700 (PDT)
Received: from myrica ([2001:171b:226e:c200:c43b:ef78:d083:b355])
 by smtp.gmail.com with ESMTPSA id y3sm3305545wrt.87.2020.05.15.05.11.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 May 2020 05:11:34 -0700 (PDT)
Date: Fri, 15 May 2020 14:11:24 +0200
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: Joerg Roedel <joro@8bytes.org>
Subject: Re: [PATCH 2/4] iommu/amd: Use pci_ats_supported()
Message-ID: <20200515121124.GA784024@myrica>
References: <20200515104359.1178606-1-jean-philippe@linaro.org>
 <20200515104359.1178606-3-jean-philippe@linaro.org>
 <20200515120150.GU18353@8bytes.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200515120150.GU18353@8bytes.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_051137_896662_F13FC3CE 
X-CRM114-Status: GOOD (  11.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: alex.williamson@redhat.com, ashok.raj@intel.com, linux-pci@vger.kernel.org,
 robin.murphy@arm.com, iommu@lists.linux-foundation.org, bhelgaas@google.com,
 will@kernel.org, dwmw2@infradead.org, linux-arm-kernel@lists.infradead.org,
 baolu.lu@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 15, 2020 at 02:01:50PM +0200, Joerg Roedel wrote:
> On Fri, May 15, 2020 at 12:44:00PM +0200, Jean-Philippe Brucker wrote:
> > The pci_ats_supported() function checks if a device supports ATS and is
> > allowed to use it. In addition to checking that the device has an ATS
> > capability and that the global pci=noats is not set
> > (pci_ats_disabled()), it also checks if a device is untrusted.
> 
> Hmm, but per patch 1, pci_ats_supported() does not check
> pci_ats_disabled(), or do I miss something?

The commit message isn't clear. pci_ats_init() sets dev->ats_cap only if
!pci_ats_disabled(), so checking dev->ats_cap in pci_ats_supported()
takes pci_ats_disabled() into account.

Thanks,
Jean

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
