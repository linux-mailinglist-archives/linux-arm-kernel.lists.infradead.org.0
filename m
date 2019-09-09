Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85547ADDB5
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 19:00:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6bU6ozDCwfeX6ouVGSIv/oab+GF07b1eJUTGrK38v58=; b=XeRUhoM7ZMQ3ZW
	ABKMIM0preo1hn51dBXYbeKqJXkCUTDecGIcwh+nD2deRnkeKE3bDc+KR/RT8zVjhZoms6rxEIRYs
	imzpnSVKlJeqnY532DrMVGROfnlBp9q/JymxxgV/HrYr76QY7rWpnCAiFpWD0+9CpaIrhH2/SZmmG
	jcsKYukBfwLRZQdvZBFXW3y8k3EGXqnlSoShkc8F4OgH4+3Ckb+T7IHToaN+mAX4mzosVL8qPYziV
	MbVTw/HCAc5YWtkKiJE/x24f22I6zCXb86jzPS4ZBoRM0nhw+9lt1V8/Niiqo5Ii5luKxNGOPzh1S
	1UZSMeet+ScGSJ996ZLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7N21-0000jQ-Hp; Mon, 09 Sep 2019 17:00:49 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7N1r-0000ie-VF
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 17:00:41 +0000
Received: by mail-ed1-x541.google.com with SMTP id f2so7267140edw.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Sep 2019 10:00:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=shutemov-name.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ndNymM6S7tmHE+n2EfAPZaAIl9m2k/Hd15vX5tVSFn0=;
 b=bC1iKUUAEbStsWoLLyFmH5e3Rn8L60J3eOAqn15+XFheVcXT1DobBZSZOvDsKrkPto
 BZiYeUcnpJuBt0piDhdzCsqC3hIod7bQagzUG9EjXBu0ESLXWCVV2X7T0c81KPLM1Uf5
 0f7ixvlLeBdwKRO29lKj8JclH/y5G451SsJIj+y1zKjGQqQ4t1XF2xWUTa0iI02AECtm
 UGFfXMsdzSC33aaEpg621gISPu5F5vPOIUSC4aFqzcjw2P7AvkYRRZ7AgQ3ewr5RQp3C
 b5f90jb1+egIK7q+SbO3Y6RqrcCAr280k27p746RhVM2R7SGmgTERnkk1Axx5L/3rZx+
 Tu5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ndNymM6S7tmHE+n2EfAPZaAIl9m2k/Hd15vX5tVSFn0=;
 b=I+Z/irSPqruJcdnGl4e/f3rAdLnbCeoCjsXU9ZfjyMeWXJz1/K2ldApecwOCuMbS6u
 9ieLwUcJ4NHsMHgB6NA8x44jHnWuIjGJnjT+Ij9naSoaZVnrprrSO0NtKy/uFoWQeH6T
 cQMFHYX7lAcCMilBka+/4S0Dje7sJOAl1I7VfWCooqPas4IfDqY34u4GQFn0k8bb0kzt
 BFL0ph0SS0JzEfLLgqYkUg/eS7Zq3LxQMUedQVQcPA38STo70kbKpB20Adkpk1jC7IDV
 dl0r3ED7fO78ThDyte5qfmL0HNLPghptjyi1CcJQYwwUn9N+5Vc03+oLUinwsaIqxMzw
 P8eQ==
X-Gm-Message-State: APjAAAWiPxlBuyZll+1UTOJ2AnIiPaAiHKKYAKlASBqxPN4B22IwT3vV
 zoSM9wmuOfEnx1DJ5iTzokNUJQ==
X-Google-Smtp-Source: APXvYqwrMgzfqO4cc8VaH4OYBbPyjLCLYVUXkYW0y564TeNoEu15jhrHaKYbf96/6CjMmoqhLR3q1Q==
X-Received: by 2002:a17:906:35c2:: with SMTP id
 p2mr10087253ejb.241.1568048438153; 
 Mon, 09 Sep 2019 10:00:38 -0700 (PDT)
Received: from box.localdomain ([86.57.175.117])
 by smtp.gmail.com with ESMTPSA id ot4sm1832093ejb.43.2019.09.09.10.00.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 09 Sep 2019 10:00:37 -0700 (PDT)
Received: by box.localdomain (Postfix, from userid 1000)
 id 4F3861029C4; Mon,  9 Sep 2019 20:00:36 +0300 (+03)
Date: Mon, 9 Sep 2019 20:00:36 +0300
From: "Kirill A. Shutemov" <kirill@shutemov.name>
To: Alexander Duyck <alexander.h.duyck@linux.intel.com>
Subject: Re: [PATCH v9 2/8] mm: Adjust shuffle code to allow for future
 coalescing
Message-ID: <20190909170036.t3gvjar3qjywjquc@box>
References: <20190907172225.10910.34302.stgit@localhost.localdomain>
 <20190907172520.10910.83100.stgit@localhost.localdomain>
 <20190909094700.bbslsxpuwvxmodal@box>
 <171e0e86cde2012e8bda647c0370e902768ba0b5.camel@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <171e0e86cde2012e8bda647c0370e902768ba0b5.camel@linux.intel.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_100040_149833_83B8D61B 
X-CRM114-Status: GOOD (  10.47  )
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
 david@redhat.com, catalin.marinas@arm.com,
 Alexander Duyck <alexander.duyck@gmail.com>, mhocko@kernel.org,
 linux-mm@kvack.org, will@kernel.org, aarcange@redhat.com,
 virtio-dev@lists.oasis-open.org, mst@redhat.com, willy@infradead.org,
 wei.w.wang@intel.com, ying.huang@intel.com, riel@surriel.com,
 dan.j.williams@intel.com, lcapitulino@redhat.com,
 linux-arm-kernel@lists.infradead.org, osalvador@suse.de, nitesh@redhat.com,
 konrad.wilk@oracle.com, dave.hansen@intel.com, linux-kernel@vger.kernel.org,
 pbonzini@redhat.com, akpm@linux-foundation.org, fengguang.wu@intel.com,
 kirill.shutemov@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 09, 2019 at 09:43:00AM -0700, Alexander Duyck wrote:
> I'm not sure I follow what you are saying about the free_area definition.
> It looks like it is a part of the zone structure so I would think it still
> needs to be defined in the header.

Yeah, you are right. I didn't noticed this.

-- 
 Kirill A. Shutemov

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
