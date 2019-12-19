Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBF6B12658F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 16:20:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MhCyUw2S1Cq9sYx3/KGGV7O318Cw4/iVCMpFHaRms54=; b=dD7TXJCpqHL9YA
	zfDetquH7W+nEJYPywuh7dx1ACdzu/yfc8mLNQSi5kQGh1GWtrrHbV7hxzpt3LEc1+ADMTI2xDYpm
	Iw6/KdBBB6d1NG75AE0QiWYHZdSTm9Iv8TLdYIXEaLJZ4F1Vrouh8ZqkmeyMpbZGiAf7UL9B85L+G
	ICCmqArcDYvrPxPB+eOnBpPzWCHVakAWgcRu0FeJp/tLDPxWGOMbghfGB0P9y9aoaUU/xoVWd362c
	ZbwJ+OMxkgF1VLecvo4A5M9byERXH9LbhPgQOyp1UFQY4lwDitz9SsnAtLIH9EKQ32Z1ByvEt5F+q
	aYn5W7gmyOSTJGyIeYrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihxbQ-0007F7-64; Thu, 19 Dec 2019 15:20:36 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihxaw-00063y-0M
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 15:20:08 +0000
Received: by mail-ed1-f65.google.com with SMTP id bx28so5201922edb.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Dec 2019 07:20:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VWkyy9HVZ5z1h/JzDV7beqzXJ8BTp9zjncpqy9RS4jM=;
 b=Xwhq2ghsh9Z7c3ZcbYyeIc/0X1G5ME0guQTpx7boQt1BcF4tmzboP+qCnSTFxb/AKU
 r8Mcj+ndehBp15O2giVqBGC63CPmPW4HITL6xHOUqmF3cQFMCh8YRjDDrr1AhNpGWkl2
 aeNy/zErBftOILGT/qFnDNv0JdWbYqey6zfgqZqLbA8J66tGBN511alv1h4gozZkVJrn
 pzcax5arrmVErEmvNY4aY3fbVaTm796w7srmBs1lu+1HNwZl/S4hOAZMNUqDMJskqwLo
 qw/NTO6u+VtZaYRr8aB5CbK2EyOXLweVXQMURwQexOYvep5112P5am06+V5NMJyEtQll
 VKkA==
X-Gm-Message-State: APjAAAUaItWS9dSF7hzpha2HLvvS46k7OoleqSNStx4/60qYwYYA1oBT
 P83EY+6jQH+QWICCA6rpl89Zlqf8btE=
X-Google-Smtp-Source: APXvYqz2A77fnDEPIXeW/rtKxPEsjmW9EWrPo+v92c2dxg/VRS3I1SIlJv5E/vSxgVestpljRt1C+w==
X-Received: by 2002:aa7:cd49:: with SMTP id v9mr9746879edw.269.1576768804159; 
 Thu, 19 Dec 2019 07:20:04 -0800 (PST)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com.
 [209.85.221.44])
 by smtp.gmail.com with ESMTPSA id bs4sm458326edb.16.2019.12.19.07.20.03
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 19 Dec 2019 07:20:03 -0800 (PST)
Received: by mail-wr1-f44.google.com with SMTP id y11so6366376wrt.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Dec 2019 07:20:03 -0800 (PST)
X-Received: by 2002:adf:81e3:: with SMTP id 90mr9917722wra.23.1576768803546;
 Thu, 19 Dec 2019 07:20:03 -0800 (PST)
MIME-Version: 1.0
References: <20191219091539.948530-1-maxime@cerno.tech>
 <20191219091539.948530-5-maxime@cerno.tech>
In-Reply-To: <20191219091539.948530-5-maxime@cerno.tech>
From: Chen-Yu Tsai <wens@csie.org>
Date: Thu, 19 Dec 2019 23:19:51 +0800
X-Gmail-Original-Message-ID: <CAGb2v6474MJy=ywxwKNbd+TWYug8YhFtwxD06PeLf_R8_gTWbA@mail.gmail.com>
Message-ID: <CAGb2v6474MJy=ywxwKNbd+TWYug8YhFtwxD06PeLf_R8_gTWbA@mail.gmail.com>
Subject: Re: [PATCH 5/5] ARM: dts: sun9i: Remove useless reset and clock names
To: Maxime Ripard <maxime@cerno.tech>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_072006_155856_ECAA252B 
X-CRM114-Status: GOOD (  10.23  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Maxime Ripard <mripard@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 19, 2019 at 5:15 PM Maxime Ripard <maxime@cerno.tech> wrote:
>
> The MMC configuration clock controller in the A80 definition has a
> clock-names and reset-names property, even though the binding for that
> controller doesn't declare it.
>
> Remove it.
>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>

Acked-by: Chen-Yu Tsai <wens@csie.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
