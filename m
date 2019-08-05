Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2AB68228A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 18:37:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oTKtDkzpV4Itc/DQeSW/WPzZZn31CAHSQ/K4zmeCKUA=; b=OnONjgxXhmfbMS
	r6DxlG+JLAYjt/bZi6SCa5Y9pexX3f6/eiZASaItI9yV/b0/u8JrmEcp66gQOdsDPgc4wzoSiRfrX
	0ZvyBQH8XfrrOH+t8N9Fz7Y3CEqbQ2Xmcuh97WrnsnlhReTvgPwbC4WuUiombdkfbXZbZpupHu4H/
	T7Vww9rl6fTisW0THArPy+0McAof39XKfvB9bJVfKxq1J87wB7MJ1YjAwrkwg48I9RIu3ad3PA6Yn
	ipdA6z7SRZP9j3nTZwcjWGqguFh8+bAmai8HZDO0G52tuUAZKmoZ90sXHfZRORl95PCwXzY5gSGY0
	qT9Oh6Q+BtR0kaRfRYdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hufz2-00006k-W1; Mon, 05 Aug 2019 16:37:17 +0000
Received: from mail-qk1-x733.google.com ([2607:f8b0:4864:20::733])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hufwy-0006Pa-6N
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 16:35:11 +0000
Received: by mail-qk1-x733.google.com with SMTP id t8so60563875qkt.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 09:35:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YiRlEkepGMSBghGordYKrd53LhTX7Zo4aO4skFP+FPQ=;
 b=KvAAsEp7EBlmFnFm4A3RAJMlB16Gu/ClvhmFXF3/nwkvC5G3iN4z6D5ZAIMQe6rNqy
 C9y9oS1wkZ6b0qlJqiG5dKcARxLYs606StbTrx5pU50S/+YvdJKieH9ziJKmkBTXHyxr
 vd8kTNJR5d72pYVhLyhomafAyREIb+BcHb5B0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YiRlEkepGMSBghGordYKrd53LhTX7Zo4aO4skFP+FPQ=;
 b=HcZ6UZKRgi14vq1pO0CDe0Q4B0+ic4r+oySjaSIIgNk+SInaCy2XzWui5Ovs+dfAPz
 DSjDLdchSZbtmyLhaIHNcq92FzdfqPCDQsnqCPsx7W1EulVckNiNsuL1LJDOhdCRY1Gm
 qzo7abdTngyHJomIKWXAdNwNCTiWYV4eZrgcQJrH/6HtKknO2ge/tLEOYj2OwrcpqRE9
 3KY9BePylhg0/Um1ggJ1q3yGHjle1oupW0gg98+8gBd+tCkv+lHlZ+Ae7VCMHKTdfSVW
 pq1WfqnjzVxL6AM4Rz10oWFDkw93bj1W9IaqpFNIn9DC2rIV9aBajVAtXWCPT77/X5k9
 VcjQ==
X-Gm-Message-State: APjAAAU6BfRMlaG4KTXD6tfYDqia7wg+UMn22QvO/FAn95hXI7k9SIcv
 HxHHXA5JDRsZvvwjtIraPjw5haFv0Z2BQtsAu7YnOKKsEdcTPQ==
X-Google-Smtp-Source: APXvYqwpHxcg06Mbli+NdzWaalL0e2240Scm0EbQOE4XY2ybkQPkjSSR20aWvi9JTpQhhWlZ4idPL5YNwkECJiwlU5I=
X-Received: by 2002:a37:660b:: with SMTP id a11mr99152263qkc.342.1565022905887; 
 Mon, 05 Aug 2019 09:35:05 -0700 (PDT)
MIME-Version: 1.0
References: <20190703040135.169843-1-hsinyi@chromium.org>
In-Reply-To: <20190703040135.169843-1-hsinyi@chromium.org>
From: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Mon, 5 Aug 2019 09:34:40 -0700
Message-ID: <CAJMQK-jaLi9QaZ4n0TguL7GD_rdn6VVNnf-3=j2XwGbUHwrgBw@mail.gmail.com>
Subject: Re: [PATCH v7 0/3] add support for rng-seed
To: "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_093508_289469_1F93CEC8 
X-CRM114-Status: UNSURE (   7.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:733 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Yu Zhao <yuzhao@google.com>, Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Stephen Boyd <swboyd@chromium.org>,
 Will Deacon <will.deacon@arm.com>, lkml <linux-kernel@vger.kernel.org>,
 Mike Rapoport <rppt@linux.ibm.com>, Jun Yao <yaojun8558363@gmail.com>,
 Miles Chen <miles.chen@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 James Morse <james.morse@arm.com>, Andrew Murray <andrew.murray@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>, Laura Abbott <labbott@redhat.com>,
 Frank Rowand <frowand.list@gmail.com>, Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ping on the thread.
Should the series be proceeded?

Thanks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
