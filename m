Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71DA61D4D4C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 14:02:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2Q7TXre9talOsUR9v9ciedFWssnMivuRUf2t8rkcHdI=; b=hShgaxDzCd1K0v
	yYHz5n6TbOSOHjRczinzbsZA/f17yKtzL2JluR48LGKXLHeWSXuap+60GMlXVALcQDeQ3uWHSHtp0
	/c2wiO65oVzJ/F4V38DoWjL6RYuNI5GhpnDjBOGB8HOD4q4sPvytLO/fOuutf89hZqDWZt7WNQ25c
	R+H/8QAeGZiSxFCiaDklOSFAdGp6w5MYU3yu/PcH60JO5DNRjpqZy5pybX2z71FqU432sEhmFu4wo
	TngJ+HK4oSIS/BbOCFq3qyBHILdKwotYgzr3SCb5nY0IkrJNaJPT00RqMRAEptxQofl8w15grYqyy
	fIOWT9Tn52cKZNjxL2hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZZ2R-0008Cp-3p; Fri, 15 May 2020 12:02:03 +0000
Received: from 8bytes.org ([2a01:238:4383:600:38bc:a715:4b6d:a889]
 helo=theia.8bytes.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZZ2I-0008Bl-LR
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 12:01:55 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id 2B23D379; Fri, 15 May 2020 14:01:52 +0200 (CEST)
Date: Fri, 15 May 2020 14:01:50 +0200
From: Joerg Roedel <joro@8bytes.org>
To: Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: Re: [PATCH 2/4] iommu/amd: Use pci_ats_supported()
Message-ID: <20200515120150.GU18353@8bytes.org>
References: <20200515104359.1178606-1-jean-philippe@linaro.org>
 <20200515104359.1178606-3-jean-philippe@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200515104359.1178606-3-jean-philippe@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_050154_848102_5581B87B 
X-CRM114-Status: UNSURE (   8.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

On Fri, May 15, 2020 at 12:44:00PM +0200, Jean-Philippe Brucker wrote:
> The pci_ats_supported() function checks if a device supports ATS and is
> allowed to use it. In addition to checking that the device has an ATS
> capability and that the global pci=noats is not set
> (pci_ats_disabled()), it also checks if a device is untrusted.

Hmm, but per patch 1, pci_ats_supported() does not check
pci_ats_disabled(), or do I miss something?


	Joerg

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
