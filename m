Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2280AD624
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 11:56:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o7NhGVTZo5ltAWVmfAOQepG8mhg2pUxLFiiHae2omU0=; b=Y4krloc+FM4JV4
	HDi7m6CLjTinl+Pm4L8W3lglZTfyU2GuXD582G8rbC59hNaGD6kr676Oej2M7juffEyTKFFB7qF6h
	8SYNfRDqYF+AUioA0avQ+rd3nRvdzjnIGh3VhTPUyFVm/e+3Bhv0YgvQ8Fuv0g20WsqKbAxcGk7LG
	VaLQg0EKv1SlkL77FJZ460AGRGwhzoLqv5Mg0gIgTCJ4XDHp1IV5Qd95uT9SB8qJi9M601R0xb6qP
	TDbl2YOkeCPV37/m9QR3aEK9Xx3ZoB9lw8PCfmUreRvWTarNeuxtZmgOZnhg2OgrrqQqTm2q2e3Wm
	Z/f5PA3gPRpnyWWg1r8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7GPH-0002XH-AX; Mon, 09 Sep 2019 09:56:23 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7GP6-0002Wk-6s
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 09:56:13 +0000
Received: by mail-ed1-x541.google.com with SMTP id i8so12324282edn.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Sep 2019 02:56:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=shutemov-name.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=TkcuSrktiec/3aeNNPIPbr3CY/ViMiJEbi8XPnPDeFE=;
 b=y4Aem2zdEw/0MY0GP//C3Dw/NpPHTs0qKqdBb4xrcHA1pZ0xHXXvj9eCql7CFteyRf
 y4akVA0lJFLoGkrZCPbFNlfznQs3ZbJ9CWr+JuD8Z3kSt7xxylldudDPRN/rQfgO+vW6
 4Pivn2PbcNEY2vN6cCwbQCaHwbvuTKNjsJxKXF06Q624NzL3x+QwiZ8yNorQ6D5vsCJf
 L8tqOz85eAHvcZKFkHNZDRJXs1a4nwiMxGa5yAOxiQQ8VFLx+6VaURSLOJbM9dRa4N2k
 Yb/2g2O7SVOnxZ7wb4kdBg3Pqci3bFH370K9sGIEGhXDnJaqKth32tPYECQ2HLF3tGdq
 JTsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=TkcuSrktiec/3aeNNPIPbr3CY/ViMiJEbi8XPnPDeFE=;
 b=F5ok5oa0iEFNlQYjN1Bvj7nP+cXIqnjutrWVwchxs4vsQRv04+1+O6fMUyJ4+3/4N+
 wpfqt4+ccZdj2SVi2iF6/5UhLQhG9oKM/cY04fnyotql+gUE9M/tO62eAL6IhD+wvndh
 L5sFRKFl/Gk42cBWUaVFYe874UGh8KZcvWc4pooZ7MBsLay2LQ0fsd0uD7EmYZPs87tZ
 +YGdD3Zt0NHDQDjlTST0CdNd47igcdJpdP2nfdYkbbWN/R1rjVuAvrC09GhrJiLWZ4Eq
 AqaL27imMV4Ak6jT594SpJGDZzCv/fVVZTtosJk3ePgzPNawze1d3xxovh+izrZ40T0A
 4TSA==
X-Gm-Message-State: APjAAAVz4sAjiRQj/czvl2lIVdLYd1FkxBr6DRgBeICGiS63Bs0qXSs0
 hUG9dV1l9ch6eSGbdz0VJ+cUiw==
X-Google-Smtp-Source: APXvYqyRn+kl2/TWZQY25cP+eDKMrBVhD4QUydeucAx1gsJCDQV6FE+USGZXHlRVlnYWQyI9ItE3Qw==
X-Received: by 2002:a17:906:5a8d:: with SMTP id
 l13mr18691711ejq.219.1568022970390; 
 Mon, 09 Sep 2019 02:56:10 -0700 (PDT)
Received: from box.localdomain ([86.57.175.117])
 by smtp.gmail.com with ESMTPSA id d24sm2946102edp.88.2019.09.09.02.56.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 09 Sep 2019 02:56:09 -0700 (PDT)
Received: by box.localdomain (Postfix, from userid 1000)
 id 7D24A1003B5; Mon,  9 Sep 2019 12:56:08 +0300 (+03)
Date: Mon, 9 Sep 2019 12:56:08 +0300
From: "Kirill A. Shutemov" <kirill@shutemov.name>
To: Alexander Duyck <alexander.duyck@gmail.com>
Subject: Re: [PATCH v9 3/8] mm: Move set/get_pcppage_migratetype to mmzone.h
Message-ID: <20190909095608.jwachx3womhqmjbl@box>
References: <20190907172225.10910.34302.stgit@localhost.localdomain>
 <20190907172528.10910.37051.stgit@localhost.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190907172528.10910.37051.stgit@localhost.localdomain>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_025612_253845_204FF0D1 
X-CRM114-Status: GOOD (  12.81  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
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
Cc: yang.zhang.wz@gmail.com, pagupta@redhat.com, kvm@vger.kernel.org,
 david@redhat.com, catalin.marinas@arm.com, mhocko@kernel.org,
 linux-mm@kvack.org, alexander.h.duyck@linux.intel.com, will@kernel.org,
 aarcange@redhat.com, virtio-dev@lists.oasis-open.org, mst@redhat.com,
 willy@infradead.org, wei.w.wang@intel.com, ying.huang@intel.com,
 riel@surriel.com, dan.j.williams@intel.com, lcapitulino@redhat.com,
 linux-arm-kernel@lists.infradead.org, osalvador@suse.de, nitesh@redhat.com,
 konrad.wilk@oracle.com, dave.hansen@intel.com, linux-kernel@vger.kernel.org,
 pbonzini@redhat.com, akpm@linux-foundation.org, fengguang.wu@intel.com,
 kirill.shutemov@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Sep 07, 2019 at 10:25:28AM -0700, Alexander Duyck wrote:
> From: Alexander Duyck <alexander.h.duyck@linux.intel.com>
> 
> In order to support page reporting it will be necessary to store and
> retrieve the migratetype of a page. To enable that I am moving the set and
> get operations for pcppage_migratetype into the mm/internal.h header so
> that they can be used outside of the page_alloc.c file.
> 
> Reviewed-by: Dan Williams <dan.j.williams@intel.com>
> Signed-off-by: Alexander Duyck <alexander.h.duyck@linux.intel.com>

I'm not sure that it's great idea to export this functionality beyond
mm/page_alloc.c without any additional safeguards. How would we avoid to
messing with ->index when the page is not in the right state of its
life-cycle. Can we add some VM_BUG_ON()s here?

-- 
 Kirill A. Shutemov

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
