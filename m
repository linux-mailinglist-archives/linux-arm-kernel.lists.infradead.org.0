Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A46B19E28B
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Apr 2020 05:37:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FSPn5u3nujF9jdwwX3Rfh1ouG9B8cDjuCSEviJ2Agtg=; b=HrHfkAcAIWzQCt
	ZS1qtUfJNW3Q074eSVo8PpZzOZ+mJvcRO3QGQNZ2uyxRLtQK5D5VRCAwenMD/1BuDe8G8My2MVkRe
	m1WhGuWYJqM693pXqYhShGZa+sWKunup3wZ5WI1zxvZfwX0670MaVYRnSPagIMSDNV1seNOeoWs64
	Nk5Jqo0kQxfnSQkXAZ/6NPClN4/JrcjxvPVgAdnXlCNecLMgQL6DsZsrLDu3jf3jeTNnZKGkTOpN9
	mSP6mKzWdcWV9FJWuHhKjZDAXxfat2o9+GeAS3zw5Tzxle6IUXrJycvmLFL948G2sySy3mRleh3fK
	1VdHvSVRKqNV2i2Qk5gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKZd1-0001Ki-29; Sat, 04 Apr 2020 03:37:51 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKZcu-0001Jo-Vk; Sat, 04 Apr 2020 03:37:46 +0000
Received: by mail-ot1-x344.google.com with SMTP id 111so9499166oth.13;
 Fri, 03 Apr 2020 20:37:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4WbluZDhw2UVjup7ga4DOtaPANEI0o4JCWjagoCmgy8=;
 b=W3YeCMAF9MApJBdYEFhU9WsZL11NUkjdvzGUS1f5iLxFQzYg1glMKciGmHzRkrgiig
 XS9a2TvTBLi69fV799tgOqiWowIg0UZWX4LgIy5YzskVoSr5YwPO4ty9hFxyTjexG0vd
 z9AaXdon2RpwUukaf1JCnOl/mbITMlZdWHNiPo06XwCzDy64aeO9uXx83shizIKEYxG4
 4pr5vOtVIK1+y8DXlynJXCcXSrQ++70A60vUXdCYljk/+HfcjP5TxzcmMsmxvrzA3XbN
 QsHelQ9GJ6O53g/Svw1kEHnRYhaZ58f5tJRGuaV9pdREYNiqSyXVq+9nAj8ddc8KbCD8
 UMBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4WbluZDhw2UVjup7ga4DOtaPANEI0o4JCWjagoCmgy8=;
 b=LnSVNCgsUGOnIMIc56VNK/ZfoPVIEa4/e8AIj0tqSLhYhpU/4kC2kLQ8tlPFnONMya
 jf7OVCatqKodvKS+gS8t+1t8rIon58YiH9szuoFhv84alQubgoRns9oyWKJAvAKcxnF6
 YIW/XxMh1+2u72MnYqc3oJRsJt+LOdo0CUe6+pbiW9pYfY51xHCNs5Wj+0DUrFfc6Wyn
 EVNs1gaH29q8ZAUuunNL2srJ6d+TXDtGvgWZ/EMIm6dbjcgbCcFYKc7jav9C5RWLkK54
 lo/oPDcLniqZEYrFLGFPtx91rR+qdkW9KIjtwx4q98AdiDEo7cEBC+6QC37mQQbLNoNS
 pshg==
X-Gm-Message-State: AGi0PuaIJpr1Q4BgHXLCUYlIFTPpTMZy/Y404mu1LSFcFElqWkxuTsVI
 Oi93St/ALYU4cYXVdKQ2SwLtgrYxvNPzbmpil2Q=
X-Google-Smtp-Source: APiQypKyHxYIf+5TXgFLUWui2aNL0tjRUUYrTHIDbSYafaUkC7PU2HOOf4l4UI+ukKt8ZQLbURBm/vE4UafQw2ZP9Is=
X-Received: by 2002:a9d:1b6d:: with SMTP id l100mr8477327otl.70.1585971461014; 
 Fri, 03 Apr 2020 20:37:41 -0700 (PDT)
MIME-Version: 1.0
References: <20200403112830.505720-1-gch981213@gmail.com>
 <20200403.161139.2115986079787627095.davem@davemloft.net>
In-Reply-To: <20200403.161139.2115986079787627095.davem@davemloft.net>
From: Chuanhong Guo <gch981213@gmail.com>
Date: Sat, 4 Apr 2020 11:37:29 +0800
Message-ID: <CAJsYDVLGi3xczRqDC-d9q8=jHK=kfYh886erUxULoMNidSX8JA@mail.gmail.com>
Subject: Re: [PATCH] net: dsa: mt7530: fix null pointer dereferencing in port5
 setup
To: David Miller <davem@davemloft.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_203745_073369_78924A03 
X-CRM114-Status: UNSURE (   7.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [gch981213[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [gch981213[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 netdev@vger.kernel.org, Sean Wang <sean.wang@mediatek.com>,
 open list <linux-kernel@vger.kernel.org>, stable@vger.kernel.org,
 =?UTF-8?Q?Ren=C3=A9_van_Dorst?= <opensource@vdorst.com>,
 Russell King <rmk+kernel@armlinux.org.uk>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi!

On Sat, Apr 4, 2020 at 7:11 AM David Miller <davem@davemloft.net> wrote:
> > Cc: stable@vger.kernel.org
>
> Please do not CC: stable for networking changes, as per:
>
>         Documentation/networking/netdev-FAQ.rstq

Oh! I'm not aware of this doc. Thanks for pointing it out.

-- 
Regards,
Chuanhong Guo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
