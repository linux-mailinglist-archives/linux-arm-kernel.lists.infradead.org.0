Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39B7D1B81CA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 23:59:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XwZ+k1UBxRRmms2iShTSO5VLHH/0ZQ0RD712RdN53G4=; b=lLNPoVCZ4aAC4Y
	mgpXpFMlVn6tc6MXZR2z+chyt74wik9ttxJLE7+8hIhyevOfvICH7/FdQbIoVnln8xFEf2kM3mGEf
	j0k7epQT8ceYITRFv9smEpn72Md9UjVM5JE6/ViTo8rVg6jBpJhHL3K7I35U3hr3bXWDB9udb0j7/
	VVnwPqisZPGbaHEFb4paWnHF+RwUb26tSapDcYdxGSm1UHJm8rYWgEg86faDgGVUuRqHy4HB7Jql7
	paMoAtYgNNHaNA6S6cu7mjbP20QBT90CFgPrA4lo7tD9cHU51fHchm3DXBV3lNA3+Telt6OqfUIee
	2RxbtxqrYnPHBvniFeDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS6Lk-0003ZD-AR; Fri, 24 Apr 2020 21:59:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS6Lc-0003YV-1q
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 21:59:01 +0000
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com
 [209.85.222.181])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D4D46206B9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 Apr 2020 21:58:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587765539;
 bh=i/eRxJFitLn3WBdqf/djBBLjo2O64KugNk0Okb1pO6Y=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=o0V1nEK/aEBCW9KdFUZfhzPWrOdFmeS9BF4u863JcjAwjr41HhVUvJGUietVZexfl
 AZdrLFuHhqIri4fWsm+5DGIx/TqWFNWoM+QWx5EpRvAfIWAQimOakMT0bK5h589/WC
 8kKCrL+BI/bBZYGUMHThvWXRO4sERcKRFcIcXVDg=
Received: by mail-qk1-f181.google.com with SMTP id c63so11886880qke.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 Apr 2020 14:58:58 -0700 (PDT)
X-Gm-Message-State: AGi0PuZfmxdIpXujHZSHjsrKlhZYvji5je8kZm+eHtpP91ofxWnLd0i9
 zfBYzZjkdba/dqgaR3jq/8PvgKmMcCsW1MFKaQ==
X-Google-Smtp-Source: APiQypJLPJndlsfEhyT5cmRrWxsBCwpwqrWKNnFyjkwqpViCDkphSt5ytu6p5Gvpjy74VSWFhqLjepwMIbdkghSoBHk=
X-Received: by 2002:a37:61cd:: with SMTP id
 v196mr11094656qkb.393.1587765538013; 
 Fri, 24 Apr 2020 14:58:58 -0700 (PDT)
MIME-Version: 1.0
References: <20200423064808.10468-1-etienne.carriere@linaro.org>
In-Reply-To: <20200423064808.10468-1-etienne.carriere@linaro.org>
From: Rob Herring <robh+dt@kernel.org>
Date: Fri, 24 Apr 2020 16:58:47 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+zNyqcQ2xWceGLz4by=3rV=46wPyj=HcFPZ9pQPF17eg@mail.gmail.com>
Message-ID: <CAL_Jsq+zNyqcQ2xWceGLz4by=3rV=46wPyj=HcFPZ9pQPF17eg@mail.gmail.com>
Subject: Re: [RFC PATCH 0/2] Add examples of secure- prefixed property in
 documentation
To: Etienne Carriere <etienne.carriere@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_145900_114262_EF81BD35 
X-CRM114-Status: GOOD (  12.55  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 23, 2020 at 1:49 AM Etienne Carriere
<etienne.carriere@linaro.org> wrote:
>
> Hello,
>
> This is a proposal for adding a bit of description in the DT bindings
> documentation of how secure- property prefix can be used for. The
> changes in this patch series describe that for clocks and resets properties.
>
> Documentation file arm/secure.txt already states that secure- prefix can be
> used for any property hence the description proposed here are not mandated.
> However it may be useful as explicit examples of such usage.

It may say that, but any new property has to be documented and
reviewed still. I'm not sure that anything in secure.txt has actually
gotten used.

You should participate in the System DT discussions in Linaro where
how to represent different CPUs and CPU execution environments (like
secure world) is being worked on.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
