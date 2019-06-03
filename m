Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 293C63370F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 19:46:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UMnW52XLh2CJqNk6wrL288gVuiS8SXWii9UqVi9qpxA=; b=os0b1rgYWgLbdd
	butcheb84Os2gn97aTmw9OSfV5ynA724cIW46B7ugvtBZOdh6ixHEQPrVSi/Li/PGhKC3ZjZDL2Up
	jV3iIWCPWIjNC3rAxRGUCeKl8715Z9alA7qp/L+0dBOtx5SU1IK8dIprZ1sDXPcb9/yzbo88n4UBD
	mMLIO0cH/+PWJTsfm1Bkr55v5hRSvnkm0wpV2/6ZAeKFKVEt56MFNyilh6j4yRzQD9ccNWo15bWzW
	8PteTJz8JZhNawZKpCd+vCYFoHIFcBlfqKegU2JzIxjEdcm+pljfwhna5QabbEMlwcbWqC01dRbPE
	faBF4rLPKD/j81P7woYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXr2U-0001T3-6G; Mon, 03 Jun 2019 17:46:30 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXr2M-0001SM-AG
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 17:46:23 +0000
Received: by mail-qt1-x843.google.com with SMTP id m29so5203197qtu.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Jun 2019 10:46:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=3YD9QwJxecxdMHZGSRuYOcVyiXHhODdQ+7hG9X3IFEc=;
 b=Y8xQhEUl5VIp1CHI2GNhUWumFeridnSrDVLR4ophf+TEEqb9RYCBYUuzTaKnpS0N95
 PodsZw5QrRzXwcVAdLU8QbPx8UtppQyKINjpafz63KgI0mbZL1RBR/HG+Aw16qS1mL8x
 GbfoGarwImiN/E4mJOvSlkb1cLIeV/RY7kSfMlxm7UZhj+NafqRJ9xFMGOVfHXfBQNL8
 3KhvQIu3nzrYZ9gVumHcKZbTTOBDGZbVoC0PmchuHZfBO5itRE+CWVGivs8JV9Bdb68S
 oKMm5wdMIjQdNVuG5jJ5CkpKuMh+/TZa/xggfv/76T6HlvfgScQBIZzwwZTZ5LwtflBg
 nfEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=3YD9QwJxecxdMHZGSRuYOcVyiXHhODdQ+7hG9X3IFEc=;
 b=kzER9BokCyDMqfohvIMosXU7yf27Gk2OAZDrre6wx3gvYKknTI9OKU+YOFmZFt0SeR
 1d7A7M2vmqMXR1uEB/rJE+Jpjzinp6XgrGrs+Q9taKvCtGdPrjejdrw/9KcezYzDz//o
 W0EEOflL8xvpH/scb0g/SuDcctaNwtqcU6H6phecJykmePEMonRx7ZkTEjYeOxNIAWhh
 DPWSasY5a4PMnNy9CA7gTWmq6bXL7XAskP2tAVLI093aLn9jqDhmQYrV4zEi2UUQhwNd
 jis+yVMV1TcDbs7BBzks9hIQ7+nAyC8dBTrBS9jzb/mnXFLxhtIDpEYF5YbzgE47ivM/
 ti4A==
X-Gm-Message-State: APjAAAVXEadNTDV5TxX2EPsynXyxcPJWmytRpT248gBh3vUnaq0Duek2
 9ms9HLnzgbF/YMuLMgg4wQ93Jw==
X-Google-Smtp-Source: APXvYqx+ClbIfZmOUdY0b04TFbjW+3r9mnjIe7N0zaIfZmDOHWubw4QUOroagi67b9WugppzpkzydA==
X-Received: by 2002:ac8:7381:: with SMTP id t1mr24802701qtp.387.1559583980558; 
 Mon, 03 Jun 2019 10:46:20 -0700 (PDT)
Received: from ziepe.ca
 (hlfxns017vw-156-34-55-100.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [156.34.55.100])
 by smtp.gmail.com with ESMTPSA id m40sm12874710qtm.2.2019.06.03.10.46.19
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 03 Jun 2019 10:46:19 -0700 (PDT)
Received: from jgg by mlx.ziepe.ca with local (Exim 4.90_1)
 (envelope-from <jgg@ziepe.ca>)
 id 1hXr2J-00032t-AT; Mon, 03 Jun 2019 14:46:19 -0300
Date: Mon, 3 Jun 2019 14:46:19 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Andrey Konovalov <andreyknvl@google.com>
Subject: Re: [PATCH v16 12/16] IB, arm64: untag user pointers in
 ib_uverbs_(re)reg_mr()
Message-ID: <20190603174619.GC11474@ziepe.ca>
References: <cover.1559580831.git.andreyknvl@google.com>
 <c829f93b19ad6af1b13be8935ce29baa8e58518f.1559580831.git.andreyknvl@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c829f93b19ad6af1b13be8935ce29baa8e58518f.1559580831.git.andreyknvl@google.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_104622_497045_D9AA34D3 
X-CRM114-Status: GOOD (  21.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 Szabolcs Nagy <Szabolcs.Nagy@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 Khalid Aziz <khalid.aziz@oracle.com>, linux-kselftest@vger.kernel.org,
 Felix Kuehling <Felix.Kuehling@amd.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 Christoph Hellwig <hch@infradead.org>, Dmitry Vyukov <dvyukov@google.com>,
 Dave Martin <Dave.Martin@arm.com>, Evgeniy Stepanov <eugenis@google.com>,
 linux-media@vger.kernel.org, Kevin Brodsky <kevin.brodsky@arm.com>,
 Kees Cook <keescook@chromium.org>, Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Kostya Serebryany <kcc@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yishai Hadas <yishaih@mellanox.com>, linux-kernel@vger.kernel.org,
 Jens Wiklander <jens.wiklander@linaro.org>, Lee Smith <Lee.Smith@arm.com>,
 Alexander Deucher <Alexander.Deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, enh <enh@google.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Christian Koenig <Christian.Koenig@amd.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 03, 2019 at 06:55:14PM +0200, Andrey Konovalov wrote:
> This patch is a part of a series that extends arm64 kernel ABI to allow to
> pass tagged user pointers (with the top byte set to something else other
> than 0x00) as syscall arguments.
> 
> ib_uverbs_(re)reg_mr() use provided user pointers for vma lookups (through
> e.g. mlx4_get_umem_mr()), which can only by done with untagged pointers.
> 
> Untag user pointers in these functions.
>
> Signed-off-by: Andrey Konovalov <andreyknvl@google.com>
>  drivers/infiniband/core/uverbs_cmd.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/infiniband/core/uverbs_cmd.c b/drivers/infiniband/core/uverbs_cmd.c
> index 5a3a1780ceea..f88ee733e617 100644
> +++ b/drivers/infiniband/core/uverbs_cmd.c
> @@ -709,6 +709,8 @@ static int ib_uverbs_reg_mr(struct uverbs_attr_bundle *attrs)
>  	if (ret)
>  		return ret;
>  
> +	cmd.start = untagged_addr(cmd.start);
> +
>  	if ((cmd.start & ~PAGE_MASK) != (cmd.hca_va & ~PAGE_MASK))
>  		return -EINVAL;

I feel like we shouldn't thave to do this here, surely the cmd.start
should flow unmodified to get_user_pages, and gup should untag it?

ie, this sort of direction for the IB code (this would be a giant
patch, so I didn't have time to write it all, but I think it is much
saner):

diff --git a/drivers/infiniband/core/umem.c b/drivers/infiniband/core/umem.c
index 54628ef879f0ce..7b3b736c87c253 100644
--- a/drivers/infiniband/core/umem.c
+++ b/drivers/infiniband/core/umem.c
@@ -193,7 +193,7 @@ EXPORT_SYMBOL(ib_umem_find_best_pgsz);
  * @access: IB_ACCESS_xxx flags for memory being pinned
  * @dmasync: flush in-flight DMA when the memory region is written
  */
-struct ib_umem *ib_umem_get(struct ib_udata *udata, unsigned long addr,
+struct ib_umem *ib_umem_get(struct ib_udata *udata, void __user *addr,
 			    size_t size, int access, int dmasync)
 {
 	struct ib_ucontext *context;
@@ -201,7 +201,7 @@ struct ib_umem *ib_umem_get(struct ib_udata *udata, unsigned long addr,
 	struct page **page_list;
 	unsigned long lock_limit;
 	unsigned long new_pinned;
-	unsigned long cur_base;
+	void __user *cur_base;
 	struct mm_struct *mm;
 	unsigned long npages;
 	int ret;
diff --git a/drivers/infiniband/core/uverbs_cmd.c b/drivers/infiniband/core/uverbs_cmd.c
index 5a3a1780ceea4d..94389e7f12371f 100644
--- a/drivers/infiniband/core/uverbs_cmd.c
+++ b/drivers/infiniband/core/uverbs_cmd.c
@@ -735,7 +735,8 @@ static int ib_uverbs_reg_mr(struct uverbs_attr_bundle *attrs)
 		}
 	}
 
-	mr = pd->device->ops.reg_user_mr(pd, cmd.start, cmd.length, cmd.hca_va,
+	mr = pd->device->ops.reg_user_mr(pd, u64_to_user_ptr(cmd.start),
+					 cmd.length, cmd.hca_va,
 					 cmd.access_flags,
 					 &attrs->driver_udata);
 	if (IS_ERR(mr)) {
diff --git a/drivers/infiniband/hw/mlx5/mr.c b/drivers/infiniband/hw/mlx5/mr.c
index 4d033796dcfcc2..bddbb952082fc5 100644
--- a/drivers/infiniband/hw/mlx5/mr.c
+++ b/drivers/infiniband/hw/mlx5/mr.c
@@ -786,7 +786,7 @@ static int mr_cache_max_order(struct mlx5_ib_dev *dev)
 }
 
 static int mr_umem_get(struct mlx5_ib_dev *dev, struct ib_udata *udata,
-		       u64 start, u64 length, int access_flags,
+		       void __user *start, u64 length, int access_flags,
 		       struct ib_umem **umem, int *npages, int *page_shift,
 		       int *ncont, int *order)
 {
@@ -1262,8 +1262,8 @@ struct ib_mr *mlx5_ib_reg_dm_mr(struct ib_pd *pd, struct ib_dm *dm,
 				 attr->access_flags, mode);
 }
 
-struct ib_mr *mlx5_ib_reg_user_mr(struct ib_pd *pd, u64 start, u64 length,
-				  u64 virt_addr, int access_flags,
+struct ib_mr *mlx5_ib_reg_user_mr(struct ib_pd *pd, void __user *start,
+				  u64 length, u64 virt_addr, int access_flags,
 				  struct ib_udata *udata)
 {
 	struct mlx5_ib_dev *dev = to_mdev(pd->device);
diff --git a/include/rdma/ib_verbs.h b/include/rdma/ib_verbs.h
index ec6446864b08e9..b3c8eaaa35c760 100644
--- a/include/rdma/ib_verbs.h
+++ b/include/rdma/ib_verbs.h
@@ -2464,8 +2464,8 @@ struct ib_device_ops {
 	struct ib_mr *(*reg_user_mr)(struct ib_pd *pd, u64 start, u64 length,
 				     u64 virt_addr, int mr_access_flags,
 				     struct ib_udata *udata);
-	int (*rereg_user_mr)(struct ib_mr *mr, int flags, u64 start, u64 length,
-			     u64 virt_addr, int mr_access_flags,
+	int (*rereg_user_mr)(struct ib_mr *mr, int flags, void __user *start,
+			     u64 length, u64 virt_addr, int mr_access_flags,
 			     struct ib_pd *pd, struct ib_udata *udata);
 	int (*dereg_mr)(struct ib_mr *mr, struct ib_udata *udata);
 	struct ib_mr *(*alloc_mr)(struct ib_pd *pd, enum ib_mr_type mr_type,

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
