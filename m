Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 102D71C3CE6
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 16:24:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SR8tLC9xy+bWjDgMQLZ1/+qHdF5/wbbpCDCerbowsc4=; b=WS/TU8rk24dAmz
	ka9akqjwU4TcyOGJDx2LAikaWeI++R8KZ1it5a2u4Hfgbd2Wou5d2oUNwmnAnvA5sCtZnjrR56bDw
	HZP+xnyLEKiyGIvxEiw3M6NGjWx/IU/7pQgiCqV0qUkjsp6Vc8g7FngVYMNOFi057Zrd9QKXf/Oea
	f1DgGWrNx8RTWKCcl6namiw4TS26yAXDArPMUYLaNoR3MaRV2mWUICrOvaI9SWMWtHHql6ecaUJty
	8qjCJtFqb4CsYSRgmOzqegR5NWjGJTKiCdBUzMUYtaQO7KB0Gh8bYkh3/n75Z79dy7cYV+Yq4qRzA
	w0X0nXjsmg8PNmyvVrOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVc1Y-0000YD-SW; Mon, 04 May 2020 14:24:48 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVc1S-0000X6-Kn
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 14:24:43 +0000
Received: by mail-wr1-x443.google.com with SMTP id l18so10438418wrn.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 May 2020 07:24:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=oDFjMogrrxgfBvAbW5sQ85zZf2koPdX/flvpXuarsJs=;
 b=C2+pDEOsEWMWEhK5jJihq+nZJsN3eyEZTYqrjm8F+NX2U4UWxWT4bq3TAe4s6ccpAF
 +4sas0ALldd+rEORJx5lpswwArDb/7j7znthws10FOtWqFllviOYtjS1sgR01+uhjhSg
 UTcE7cHgEzLdbISPHhOxFiqWLpJzCQ1DRIUt4NlbeOv0R8e703LNhYb26kTHr9YaAaOc
 proIbDywAmUaxtjcMFXJUCVdUFnCQGQjanr6hd0+FW3YkN2pevahT++dZrNrh8UlKt8/
 Zpd1vSYA8JKyL8SjQQTI8NGfT8GjDltQ3FbhARNC21VzGwv16zunILQ502YxBkFLEGBu
 UDDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=oDFjMogrrxgfBvAbW5sQ85zZf2koPdX/flvpXuarsJs=;
 b=kuS+AFz18rtJ6sn8zQ2uz8xuqrv96VZ8xZSkg9dUwjfAKbpWsh/q2jTZD0JqvnPBnA
 bxXrYFqpxlbSkIKAUROKyTnl4roB5xveysAsqMSRABXKP9O7A3s8yA7qu0N5e5eUB4W/
 FxqhcIbxG7vMwdfrH1mXgbuNI941MjxVTadx5GvYPtaFDc9luit9GbfTjG4BAdIDMthh
 Cx+MCNop6lUI1cTOOb4q3M0YuLq+ZMtEAB5A3wYhccETwjPakpqZsyLegswzhGRYGzDV
 EZHPhnFqnHS02vJXcMaVcHI5pH0WzqG5Rijb+Ro+4m/xPJjHsMbN7A5cTdzdMaXuaGgk
 k5xQ==
X-Gm-Message-State: AGi0PuYfm7hqz0NAKsezM+48gVk+GBhCqBgFGHvGJEUvLpSfg8f5SRji
 ikM8H9j6nX3h8plH6IWcCCFnHfalG51Il6sAjl0=
X-Google-Smtp-Source: APiQypLGjILvGQo1LHKs+cUl/os48PmLVkMiBpNAewY+5+4GJJUXgPIlfOPn4hI9IzydhWXXgPlj9fp5HqE+FI7JLCY=
X-Received: by 2002:adf:ed82:: with SMTP id c2mr8123328wro.255.1588602280048; 
 Mon, 04 May 2020 07:24:40 -0700 (PDT)
MIME-Version: 1.0
References: <20200430143424.2787566-1-jean-philippe@linaro.org>
 <20200430143424.2787566-20-jean-philippe@linaro.org>
In-Reply-To: <20200430143424.2787566-20-jean-philippe@linaro.org>
From: Prabhakar Kushwaha <prabhakar.pkin@gmail.com>
Date: Mon, 4 May 2020 19:54:03 +0530
Message-ID: <CAJ2QiJLUxiJRnxQmO3O_48ZcTtNwziCWT6i2SJdAruDi+KGEFw@mail.gmail.com>
Subject: Re: [PATCH v6 19/25] iommu/arm-smmu-v3: Add support for Hardware
 Translation Table Update
To: Jean-Philippe Brucker <jean-philippe@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_072442_684443_3C6444D2 
X-CRM114-Status: GOOD (  10.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [prabhakar.pkin[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: fenghua.yu@intel.com, linux-pci@vger.kernel.org, xuzaibo@huawei.com,
 linux-mm@kvack.org, Will Deacon <will@kernel.org>,
 Ganapatrao Prabhakerrao Kulkarni <gkulkarni@marvell.com>, joro@8bytes.org,
 hch@infradead.org, jgg@ziepe.ca, tanmay@marvell.com,
 Catalin Marinas <catalin.marinas@arm.com>, zhangfei.gao@linaro.org,
 devicetree@vger.kernel.org, kevin.tian@intel.com,
 jacob.jun.pan@linux.intel.com, Jonathan.Cameron@huawei.com,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 felix.kuehling@amd.com, iommu@lists.linux-foundation.org,
 Robin Murphy <robin.murphy@arm.com>, christian.koenig@amd.com,
 baolu.lu@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Dear Jean,

On Thu, Apr 30, 2020 at 8:11 PM Jean-Philippe Brucker
<jean-philippe@linaro.org> wrote:
>
> If the SMMU supports it and the kernel was built with HTTU support, enable

is there any framework/config for HTTU which must be enabled to use this patch?


> We can enable HTTU even if CPUs don't support it, because the kernel
> always checks for HW dirty bit and updates the PTE flags atomically.
>
I believe, this statement is valid in context of this patch-set only.

One cannot use code snipped to test HTTU because exiting
io-pgtable-arm.c driver doesn't have framework to leverage HTTU
benfits. It by-default sets AF=1 and does not set DBM.

Thanks

--pk

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
