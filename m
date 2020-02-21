Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A797167B19
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 11:47:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=852CbQkPJKeXwQtI/46FMeVMM0O1LBPbHooXWaoB5GI=; b=HbKLqNPflQku3b9EQreIlA7tTm
	ThDcnK4zInEWSOeB5Xmf6PrAf5EwS+eDx/3Dl5RaXGZigsLUCkHKOLzmc69+mgaOEBfSloZq6w09Y
	rxWz/8EbdncB6D49jQfsqsoxHG0MINlExPrdOhPDddbN67jGBuBY01glcS1zIpEeymPStEd5ESdl+
	fKCxLaVH2IrEOWq/+EZ9rRpOQrWlreyEsVvHZmD0KcheJtnPX35wGpqPQ69f+4OP2sptU1+c/36ES
	BJ/HW+e3PziXXKVDJCPRgxboCcKdJL0219+cJeZGsnxau2PfxSY4KHDnMWR4FJVV//ObSetvgwlCH
	af0vkeog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j55pu-0002M7-Hn; Fri, 21 Feb 2020 10:47:10 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j55pk-0002LC-3x
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 10:47:01 +0000
Received: by mail-wr1-x441.google.com with SMTP id z7so1437548wrl.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 21 Feb 2020 02:47:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=f7yu7K3JlqyMe87m1GSh91P+I8Cu0Gpj7XsTeWNuw/0=;
 b=RGDqo7t7PQPwtANjW5Ko22b90oJlbS9Mbf6ViJpbXRNCF7YDRSRfcvNmdV/zT3QepT
 HThU/ZP44u6O6LrZKKLyVd+22OjfZ3zbVn9pls+kj3owR3PMIQhitrXFftNz3SitokNR
 T9mPMwW3fNVmP5iOQ7p/HA3l3Lb9CdcHBngtcXO3U2oV+r0IdSKHXiUM1sOKePr8qnea
 qM00U+ZEW0OciRHwoyROaCyh+gPx7YMiHu61+a2gOcvloFrncIu++N35yGAmyMzsdyPd
 AJlP1Ycpd3nkKQbMNXSKVsxgYoPo4JjmEbtslNFQNYDgbTxTqTyI+1Cf0wwACm5gt6AC
 arcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=f7yu7K3JlqyMe87m1GSh91P+I8Cu0Gpj7XsTeWNuw/0=;
 b=Qvr0M6DvUiPXppE2lqFfTDntG6AsHu6zrmjyUANaD8QIHH0uT8inliKvWEbobnM3Sa
 EvD4TdULjEzgPylwP2IX7Y243e+Mb+0YPORl4GINl6cc9ZuiC0e/aNvJIdXJm5qq0AME
 FyDqDKeKazsfGbs1I8eby0dkBte+v6qFB0PqrH3AB7EOM2FR+qzMqSZtkX6IK74OdzKY
 O3HOTNvTDLFQcd3kuEd/GTfk6/HpGe+NOe7Lrok2iGQekDADoiSnluHWiVny03hlQjYU
 H8awfiadV0YWaj6Mq0KWxPMNA1rw04WgCOdeI6RV2RM91GjWlv5RouPMiUPXqqz4X5yp
 No8A==
X-Gm-Message-State: APjAAAULSj+uaH/wHrHwDIebM6b22pBDnrp5OFkLy89Dh6ixF4MubJhl
 YX7JyIj1uGEVp28P45JFmiEDWQ==
X-Google-Smtp-Source: APXvYqwsELLBhCREi3H11GBspa/fR2fMvBqx3YW0qemlsSfDpaHyhrVRZwlk5hC2zFPbUNrDKhRDaQ==
X-Received: by 2002:adf:f28f:: with SMTP id k15mr47355503wro.230.1582282018874; 
 Fri, 21 Feb 2020 02:46:58 -0800 (PST)
Received: from localhost (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id q1sm3376647wrw.5.2020.02.21.02.46.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 21 Feb 2020 02:46:58 -0800 (PST)
References: <20200220204433.67113-1-martin.blumenstingl@googlemail.com>
 <74a8613c-ba30-5f42-9edd-b5af1d7f330c@baylibre.com>
User-agent: mu4e 1.3.3; emacs 26.3
From: Jerome Brunet <jbrunet@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-amlogic@lists.infradead.org
Subject: Re: [PATCH] clk: meson: meson8b: set audio output clock hierarchy
In-reply-to: <74a8613c-ba30-5f42-9edd-b5af1d7f330c@baylibre.com>
Date: Fri, 21 Feb 2020 11:46:57 +0100
Message-ID: <1jpne82p5q.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_024700_165571_A4DDCE11 
X-CRM114-Status: UNSURE (   6.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: sboyd@kernel.org, mturquette@baylibre.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On Fri 21 Feb 2020 at 09:28, Neil Armstrong <narmstrong@baylibre.com> wrote:

> On 20/02/2020 21:44, Martin Blumenstingl wrote:
>> The aiu devices peripheral clocks needs the aiu and aiu_glue clocks to
>> operate. Reflect this hierarchy in the clock tree.
>> 
>> Fixes: e31a1900c1ff73 ("meson: clk: Add support for clock gates")
>> Suggested-by: Jerome Brunet <jbrunet@baylibre.com>
>> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

Applied, Thx !

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
