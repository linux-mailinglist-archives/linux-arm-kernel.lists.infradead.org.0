Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FC92F1DC0
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 19:47:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Obf7Ln4wHWdXxqFoU1VSZSUJYQXDQLY0ZLSljAr+KxA=; b=Jbk18acLvv2Q7V
	0LStVsmbNzxXubDNVedPYORWP5zizHbJlWewS7Roy0EaOGdCXH7upz2r/Ap8hRacZ+1W58eP70Xlb
	h1HssVVq7eLrNLKyhpLaBvhGOghz94kZx9PpatSraIzByUPqsyWYgnAOZGicpm517PwbGXjEOSZEm
	Dq8zs4ebYedcg/qveyGIvQvoWglMTd7Wh/MaMJjrWIS5hdyXWDcURhX9AwcrU93C1+GSWorXfYh0q
	XqjsZIOpimKd71CkCQaIVI6XaQNiHHgAAjiNIA+MQr6sp2HWduO28CoSRb4bBOwcGGqwCRon/s2O6
	CRsjzVGp/L4R0RAdZDjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSQLR-0000Ad-Ha; Wed, 06 Nov 2019 18:47:53 +0000
Received: from mail-yw1-xc49.google.com ([2607:f8b0:4864:20::c49])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSQLJ-0000AE-Fa
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 18:47:46 +0000
Received: by mail-yw1-xc49.google.com with SMTP id p185so19688299ywb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 Nov 2019 10:47:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=iuhKlytJBZM6z4JfLv4nGpswwtwyGQLqGn2PJIaoWCM=;
 b=an/QfeoCwD2+tFI6iqjZzV7+UGnY37JqBMJqrr0vygODNoAZFN8hY3gGzThuYrNro4
 r1vixHZyW4gKDC0lQB1etIs2JcMDTaRIRi6Ha49VBCRzsmZu09UBiBH789KlJV+UVq4E
 5Q9tTdnJOJz16j3gl3npT6ro1ko/QmhobuY3fPeffAH4xEMrYEWo8ruhSqpMriM66EPs
 lDGDloiBd546bql5UixXyvn8rMEhqh1LvR6qvJmiJPq8mm6qRQhd+cyYK1wAjbIjc9eN
 LTru6pLONi219DtbPwP4dlBfQsfg4II//sMTFQG/EiPH9Zi9wYi48hsiLY3Ui5fPAfvO
 p4bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=iuhKlytJBZM6z4JfLv4nGpswwtwyGQLqGn2PJIaoWCM=;
 b=s/yujiMs4v5JfMtj6HWW66T6EidxVDs6pI4JnbxcS0WnbUWmLAHCcNJH7AkQvjMCFs
 TVzKcIVj8g/VibFxjE18vdz3NMMhAJLYZe20iS8iy9yUIANnqbzhoIlcqrlGX2yz+2rS
 m9Bp36/0v+mopHAPb7gwxEhbvB7s7wXhYjARWAakTMWSS6GjGqRy3oZyy+AWJA+ZRAfe
 6TcrnRYNXSyoRHL4vOf8Uum1CM7v0U/mtrj6OfDe05lgq4nIFKvJ9i/cM/CHJLYrJjmo
 QMiIEo67UoBUpc/Zwo+vo7ykzIMv2VMKYhKJCZRZLldGE9BjWL7AgbjcHR79oCDksQNA
 03wA==
X-Gm-Message-State: APjAAAWyuF0cf/k50FPHzMtVbHWTFf9biLm/BRWJEbEIFWxeg16FzJp5
 efD+5bbxlFGisGAmfw4MfeXzCai14g==
X-Google-Smtp-Source: APXvYqyBRZvedRyg+ZlKZ/6ICI2pXNHbDWSG6ZQeXweM7qES38VeJjyjQdoRw+EcD4m63xepknj4SpOjNJ0=
X-Received: by 2002:a25:cf55:: with SMTP id f82mr3560949ybg.203.1573066063184; 
 Wed, 06 Nov 2019 10:47:43 -0800 (PST)
Date: Wed,  6 Nov 2019 10:47:36 -0800
In-Reply-To: <20191106120021.115200-1-weiyongjun1@huawei.com>
Message-Id: <20191106184736.197733-1-yabinc@google.com>
Mime-Version: 1.0
References: <20191106120021.115200-1-weiyongjun1@huawei.com>
X-Mailer: git-send-email 2.24.0.rc1.363.gb1bccd3e3d-goog
Subject: Re: [PATCH -next] coresight: funnel: Fix missing spin_lock_init()
From: Yabin Cui <yabinc@google.com>
To: Wei Yongjun <weiyongjun1@huawei.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>, 
 Suzuki K Poulose <suzuki.poulose@arm.com>, 
 Alexander Shishkin <alexander.shishkin@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_104745_544913_265FE6F3 
X-CRM114-Status: UNSURE (   5.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c49 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Yabin Cui <yabinc@google.com>, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Thanks for the fix! I should have tested with CONFIG_DEBUG_SPINLOCK.

Tested-by: Yabin Cui <yabinc@google.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
