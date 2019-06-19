Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 542F54B125
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 07:13:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=awA6FUnBd4ksNpfdAv+fVXKBT5KJjgfHK4iorrH6VQI=; b=ofs7CLb3+b9KRs
	qovhBsVwhQPfosa5IAcu8iiacZkJIqB5Z/7BIFitTan+DpjzM2u9uGDyanSayRjc0BU7WikapG7un
	//wUuKSUuSLF+wsPjqnzq669TGCMJLaCfek8/kCM2eBer0pub80s2AZso4E7ZEcD6chz/UzPgafB/
	CoCwNXFW+3WfCv+vcI62R+Cw4MlsMpXHIy5l9blOEZVndCjCsitcmfNvww0fuhG9LIrxMAit6gWyL
	hsFIjFAzKLxgWfOTaSVEAKeoOtrE8LIP7q7qRv/wHfG5QsgmTIkGX+fGk8PrpDvE7hXLR8E/H2YOq
	BXafdNitHxDADrI0gTnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdSuc-0005yh-F7; Wed, 19 Jun 2019 05:13:34 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdSuN-0005y6-NP
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 05:13:21 +0000
Received: by mail-wr1-x443.google.com with SMTP id n9so1853377wru.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 22:13:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9guZEDssE8I+Ozz4TU41/U7IQZOO1+3LKJDr7vi/5Ig=;
 b=OW2v0Mufw9VUMtEQX0EIYMhdF6CFGIbVcMLAKreHYZkGp2OyuSAfASx/K+buOjywda
 Dk6qy5lfj9BrOmNUZl8p3cKJhYMkjPokGwuXVK6EsSXD9p4uhxX/orHbR2WjAjNgEbcS
 VMUmfHMO6pK1C8PqH53BeGopVDQr4MsKWW4ZhvihkaJIxYd1aLloqGLIN9IflPdrF+Al
 K7KRXKaG/oGSStyrstgrltAQBz7LhiLZFOy4fXG2+pTjQkXdffJItdA2mcrSEdkjfUWp
 GSvHKJBu3v29Bi2p2ENmLZHSdjCxcuk7eJEpq2HcGfO7+y0z2RuNhWxr0WmxVi5kIqzm
 zpcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9guZEDssE8I+Ozz4TU41/U7IQZOO1+3LKJDr7vi/5Ig=;
 b=lsvvfkTMlt2s//yUMvQjdTEjiux8sU4IiIO7jbgrMSLOVtGRSV40Q6tforqX7pl3oe
 1vZ/B8Bl+iD+k4h7Eu2SmWJuMAkYiIx832MbKFnE3nQ1pMLA5cHUwhWISq2ErgfKxrQR
 AQxoD57eq3O15JRh8sVl8EvpZ9+Vc9ZC6Cfb97gfa7XosVHXSQOlFeweGwldQiXMkAqK
 ot2GiivTcWroR8mEHiOryCnGFWpX9KDRlInFr9Sw9WgU24kkJEb5cYs8avggh1WES+aT
 oa5N93NzrHUpK3AvKBAYqRh50Wqanoh5K8zNUhhjbfcpifUsnsIailcPAa7vV7jQzT2e
 noLg==
X-Gm-Message-State: APjAAAXnVG6V+zP9c19kNybG9bry9sfcxfqZHtUWW2y0C603WZgY39wI
 H4EsSTEXx3kC8IY5/6Ax6qg=
X-Google-Smtp-Source: APXvYqxGBww6ssn1q6Cc/uBn6zveGVb+IPhy76VqGDZJSXuEch6xRNKIOwbG51zvq8ngpGJrw8nuoA==
X-Received: by 2002:adf:f442:: with SMTP id f2mr17524212wrp.275.1560921196964; 
 Tue, 18 Jun 2019 22:13:16 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133C20E000CE01247662D4005.dip0.t-ipconnect.de.
 [2003:f1:33c2:e00:ce0:1247:662d:4005])
 by smtp.googlemail.com with ESMTPSA id f204sm301596wme.18.2019.06.18.22.13.15
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 18 Jun 2019 22:13:16 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: colin.king@canonical.com
Subject: RE: [PATCH] net: stmmac: add sanity check to
 device_property_read_u32_array call
Date: Wed, 19 Jun 2019 07:13:08 +0200
Message-Id: <20190619051308.23582-1-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190617165836.4673-1-colin.king@canonical.com>
References: <20190617165836.4673-1-colin.king@canonical.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_221319_790301_07B0C681 
X-CRM114-Status: GOOD (  12.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: alexandre.torgue@st.com, netdev@vger.kernel.org,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, joabreu@synopsys.com,
 mcoquelin.stm32@gmail.com, peppe.cavallaro@st.com, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Colin,

> Currently the call to device_property_read_u32_array is not error checked
> leading to potential garbage values in the delays array that are then used
> in msleep delays.  Add a sanity check to the property fetching.
> 
> Addresses-Coverity: ("Uninitialized scalar variable")
> Signed-off-by: Colin Ian King <colin.king@canonical.com>
I have also sent a patch [0] to fix initialize the array.
can you please look at my patch so we can work out which one to use?

my concern is that the "snps,reset-delays-us" property is optional,
the current dt-bindings documentation states that it's a required
property. in reality it isn't, there are boards (two examples are
mentioned in my patch: [0]) without it.

so I believe that the resulting behavior has to be:
1. don't delay if this property is missing (instead of delaying for
   <garbage value> ms)
2. don't error out if this property is missing

your patch covers #1, can you please check whether #2 is also covered?
I tested case #2 when submitting my patch and it worked fine (even
though I could not reproduce the garbage values which are being read
on some boards)


Thank you!
Martin


[0] https://lkml.org/lkml/2019/4/19/638

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
