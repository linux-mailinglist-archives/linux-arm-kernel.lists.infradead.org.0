Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98B7414D568
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Jan 2020 04:52:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5Qrbq5rSAHyyaMH2tSHy/MLy7yRe3xVvjAFGlPlR6kc=; b=LInIlhxZaOdpKy
	F6KxRPgSKhNB0yT2Whuh3zcvkZhkkqg0Msy1/xLx5G51O51g4sz/cRpRftNRq6TjzrJy3W5z9tpTo
	P+94Dxe5vkPeBpwjt7zKVAlssDf8EhNsD4zaCUDtiF99MN/gc9I1xKrta03cvDELxeg7jrfPDMFsR
	fJDqPQ30uZq4gyYvWt+6cAGbV+hsmdaYDk0uYID8WxfhkEI/ABHiJXihUC4ErSGj/2+MAxCDkDT1X
	W+PalrV9es2Q7X+o5y6lLKgHI4+3G7LrFuVlCRo13N8xqKh6wI062Qm1I2Ukwd/gLQdUANXWuSTP4
	RGSylKUT/F4jKblKSWVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ix0sc-0002NB-G6; Thu, 30 Jan 2020 03:52:34 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ix0sT-0002MS-N7; Thu, 30 Jan 2020 03:52:26 +0000
X-UUID: ebaa0ab6196f4e6b993ae9c7620b3629-20200129
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=3bvai5RkNO6CsB90bdkSQOYb8Boyue9WmpvdjPAjYrE=; 
 b=LvZByeUmLm02Ok2hWnLatHg7/qO01kS4WAdxpbZX63pcSnhfwymAwFzLGT9fxb5xyVUWZ4P+FekUugDq1QYEJxMNhQK9+smkTFdAJAbXV6uZLC+sNYE0UV+qLNVGzL6vmKwtDmD3kuQlNaJk+Daj9UxQ8LrSUZRmdzpLbzl436c=;
X-UUID: ebaa0ab6196f4e6b993ae9c7620b3629-20200129
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <walter-zh.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1404709523; Wed, 29 Jan 2020 19:52:13 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 29 Jan 2020 19:43:59 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 30 Jan 2020 11:43:15 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 30 Jan 2020 11:44:02 +0800
Message-ID: <1580355838.11126.5.camel@mtksdccf07>
Subject: Re: [PATCH v4 2/2] kasan: add test for invalid size in memmove
From: Walter Wu <walter-zh.wu@mediatek.com>
To: Andrey Ryabinin <aryabinin@virtuozzo.com>, Dmitry Vyukov
 <dvyukov@google.com>, Andrew Morton <akpm@linux-foundation.org>
Date: Thu, 30 Jan 2020 11:43:58 +0800
In-Reply-To: <619b898f-f9c2-1185-5ea7-b9bf21924942@virtuozzo.com>
References: <20191112065313.7060-1-walter-zh.wu@mediatek.com>
 <619b898f-f9c2-1185-5ea7-b9bf21924942@virtuozzo.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_195225_761943_CB4BFF05 
X-CRM114-Status: UNSURE (   8.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: wsd_upstream <wsd_upstream@mediatek.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "kasan-dev@googlegroups.com" <kasan-dev@googlegroups.com>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>,
 Alexander Potapenko <glider@google.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Andrew Morton <akpm@linux-foundation.org>, Dmitry Vyukov <dvyukov@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2019-11-22 at 06:21 +0800, Andrey Ryabinin wrote:
> 
> On 11/12/19 9:53 AM, Walter Wu wrote:
> > Test negative size in memmove in order to verify whether it correctly
> > get KASAN report.
> > 
> > Casting negative numbers to size_t would indeed turn up as a large
> > size_t, so it will have out-of-bounds bug and be detected by KASAN.
> > 
> > Signed-off-by: Walter Wu <walter-zh.wu@mediatek.com>
> > Reviewed-by: Dmitry Vyukov <dvyukov@google.com>
> 
> Reviewed-by: Andrey Ryabinin <aryabinin@virtuozzo.com>

Hi Andrey, Dmitry, Andrew,

Would you tell me why this patch-sets don't merge into linux-next tree?
We lost something?

Thanks for your help.

Walter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
