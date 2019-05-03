Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F237B12B1A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 11:54:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nN6TRlbby0ISAarCBg7wBXDsoV0QcSPmVzTzvWewyfM=; b=bKpr8TzlfpqAa9
	W0KOpt7dvdDk4ahnVd6k71izTX4Mg2e32V81sUyrEbpUn7de+OfYMfTMYYlsYPNOhkxgdns59MNgU
	KfD3oxXqjv3QgMduKXz7aLrfTnG9SZFMYExj/2rTybMFZ7bUQ7ZvVSPIUQ3hR7mqKlunWQn3rUhIn
	rpCWw66ZibX2/L/Qdl1qFxCS1HOEC9B9znJD6ORdXfndlJdE5Ganw/nKKQqsdtU5D+QFX3IEJ4kSn
	B4EPXGpqnsJ29F94aOJ/J8BWOuBLg9qI2Oa6EvaqkNyyNHgHA4tj4gOG5e2O2rbX2mPGTfM+M9iQ4
	nUhVTfKmJoaxbtr+Jpng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMUtm-0006Or-8q; Fri, 03 May 2019 09:54:34 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMUte-0006O5-9y
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 09:54:27 +0000
Received: by mail-pf1-x444.google.com with SMTP id 13so2336627pfw.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 May 2019 02:54:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=C0o2C2dvxi0pLMdXrDdXumezhHQvfHIWUdutqFX4avo=;
 b=CmgJv+ovQfwvMZ8hYrU6a3KAmlaqUCKfjDSp83hy2eKiLdEJ4JPXjrBJqG14F9XqA/
 63eOwi3EkVjl+6D/641S48T8xo5/+soZmiSsx8FZG8MJNjuvkgpCckX5B7TdvVcx7LGV
 f+xOAwRPKBwwoRwKkqvQ+vDiOq7OhkELe3l6uvDfjSQDo1VC3gSVoa22s2Q2D7S0On1w
 wgP3TRWiWVyVbqssaGJTP4T2Q8KqSekqh+Buw9TLma8BXAJFkwYJBJaMHWjl+sVhdII1
 RtireCfFfJXDEh0wbQIcmVPQeuxSoPZwj1SU2QM9oQST4DJ1VMOWRQuzuNsvvBtrekmx
 8JJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=C0o2C2dvxi0pLMdXrDdXumezhHQvfHIWUdutqFX4avo=;
 b=HuonoqlEvFCxGEMuvaTGa6xtvvqbYnt7M/Ry8UibP26VUkWY4uH2MWS5aWGxinFT8Z
 gbHifSJaeHRIeBkxa03ZuLgpGkdhKprvhQComGS7pwEYpqyf7/l1qInd6/ze4I+3KbED
 teop4rVhSnqqPCUw61H34Re+jcZd65+vurHobH4rhG/gN2XhkWt/uggkZD4EXDmUWWoR
 xQeCcsB92fHfo9Xa3FeW3OyLWBZHEH1VUTDLCvYXrlNxVeYdmuIlbKHX0a7M5LlUuLi5
 Sr/6hwqnA5rqo4jdOY/kGY0n3LDlSVfgzXv98vrR6IC6fA14fZx9wbm9XggoQYDI+e8v
 fepg==
X-Gm-Message-State: APjAAAW6Lk2luEopWDAQCm2ANuJhFXu5OV6kUvLWpPkpdl3i93HbMxBo
 UXVP4Sj8l5fVIcGaOTXhjrPTTQ==
X-Google-Smtp-Source: APXvYqwvKwHE2OHYzzhBFYFV6Lf8kjUsbmnwDw43+ppDTskuURRW+KyLhklRJn7iA21MO0JSDONaUA==
X-Received: by 2002:aa7:9151:: with SMTP id 17mr9215458pfi.192.1556877265425; 
 Fri, 03 May 2019 02:54:25 -0700 (PDT)
Received: from localhost ([171.61.121.242])
 by smtp.gmail.com with ESMTPSA id x4sm2353103pfm.19.2019.05.03.02.54.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 03 May 2019 02:54:24 -0700 (PDT)
Date: Fri, 3 May 2019 15:24:22 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Quentin Perret <quentin.perret@arm.com>
Subject: Re: [PATCH v3 0/3] Make IPA use PM_EM
Message-ID: <20190503095422.dw5ssdd6bz2wxaqn@vireshk-i7>
References: <20190503094409.3499-1-quentin.perret@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190503094409.3499-1-quentin.perret@arm.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_025426_344407_706FA3BE 
X-CRM114-Status: UNSURE (   8.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [171.61.121.242 listed in dnsbl.sorbs.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-pm@vger.kernel.org, rjw@rjwysocki.net, amit.kachhap@gmail.com,
 daniel.lezcano@linaro.org, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 edubezval@gmail.com, mka@chromium.org, catalin.marinas@arm.com,
 rui.zhang@intel.com, javi.merino@kernel.org, ionela.voinescu@arm.com,
 dietmar.eggemann@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 03-05-19, 10:44, Quentin Perret wrote:
> Changes in v3:
> **************
>  - Changed warning message for unordered tables to something more
>    explicit (Viresh)
>  - Changes WARN() into a pr_err() for consistency

Acked-by: Viresh Kumar <viresh.kumar@linaro.org>

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
