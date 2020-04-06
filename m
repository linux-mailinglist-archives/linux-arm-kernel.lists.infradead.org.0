Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3A9119EF69
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 04:58:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RN5LCZ51yIbwQUUdh7JH9UUiGTALCST1kJeIbfl8l1s=; b=aKbabJbxD3Cm81
	a964BFETPBfEQrghTGDlDxPV3vhi2XGPJXXvVtn5VFnaZ0CRaU6dbIjwuLgeE03Bo6NSxBJB6u5+i
	b1xnpKwz4vFoQpIrTn3yKIxixSAFemiN4eBB1YB2pDPYr2n5lJv7ZBMGxyLR7riR0LArbxno3Yak2
	eVTmdkIzblapveafpZMGmcW7KyPMpGnE7Rz1USAcMdHyCqKzCrzRghezda6IfrL3nBJCw7lzDETd5
	pVs/01BEM7lQYJwmyxCJaHD4QWCTzrrKv+Ufq9dEV0GmXockfhNTFxS2AfTwL6gXo6OakvyPpIrsT
	dTDKA1AA4E3wE/nSREfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLHyE-0002nm-UJ; Mon, 06 Apr 2020 02:58:42 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLHy7-0002nN-MT
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 02:58:36 +0000
Received: by mail-pf1-x444.google.com with SMTP id q3so6833391pff.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 05 Apr 2020 19:58:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Snmazk82MB0/0cCIeeJxaxYr1fCvgV5xCLT8s21RwAs=;
 b=NqPNfIWgOWaM4sqrQjkJIXbp4kT3YO3B6wIsbdOFmc7pyXoGE+VpXs21oojmhTvtCm
 Y+y1dtXB9zv/cjK4hEKRyVCSiKUqpVhrhbMDH0nxoyKBSwhydSdWpqPFNrMbYEONwqRW
 aPZFVQ+NIt+dsDmxklpi93KoEIHkfhL69mX9exDgI3NQ7tsVfsbL/lQC2vH8WXGmiQ18
 tK1paQ3pARNq8QchfUQ0D4YtTSh6wI92NpK4P6clPK4hPofDCqwBhwYS+iMTL+iVNgCJ
 Eu0wi6WiU9hZSkSnbDcsayaICj10GcZoZ1P4m/kiIeeE+qqGEfWThwuD5BK6c41DsOE8
 33/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Snmazk82MB0/0cCIeeJxaxYr1fCvgV5xCLT8s21RwAs=;
 b=F7HZkfvKdit8Ywr6C7dVEFq1pSBUEFhBQdjqhYk1c8vc9IaupETMZCWw4h4kKVXl3d
 DVNVmr7m3of/aGML2OGP8JasQrUrsEBmGbdcY7udjssFC7xtLqYjiOr090mb05Gut61r
 I8cjfbNa/jIy22bQ8IqMWhKV2xUxRpvwEDSBlhASsXBFDEmth14Wa8QZNK1cXWyOt3L7
 hELNlsnVUcfE8ZwxrkuYlV3Q/KpOQ2zU10NWiZs22+PiFYBx6xxzFSLX//i1IEm6bVzz
 FgFPFhCj4vBTxB3AL8oNKDlSpHWyg+DetaheL/EGSeU3t/AEpj6wY+HoFPdV6nJnU4sv
 0mtA==
X-Gm-Message-State: AGi0PubmJDO5JZ/yFAsoio0lKstuhhRF0x8eenLbvLdPgCCqBL6Hh1Fy
 o5M69dUkc/gyGcONO3Sq0ga3r3ENMEA=
X-Google-Smtp-Source: APiQypJFIzF+3oECidi3FpRsgBdzk96yF/DdD8sX4fg1ZTuRL6fKY5vITqktCAnS0MAH0XqQp9KVDg==
X-Received: by 2002:a63:64c2:: with SMTP id
 y185mr19296513pgb.133.1586141914636; 
 Sun, 05 Apr 2020 19:58:34 -0700 (PDT)
Received: from localhost ([122.171.118.46])
 by smtp.gmail.com with ESMTPSA id d3sm10450782pfq.126.2020.04.05.19.58.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 05 Apr 2020 19:58:33 -0700 (PDT)
Date: Mon, 6 Apr 2020 08:28:32 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Mian Yousaf Kaukab <ykaukab@suse.de>
Subject: Re: [PATCH 1/2] cpufreq: qoriq: convert to a platform driver
Message-ID: <20200406025832.7bbtfo52k3dz5pkj@vireshk-i7>
References: <20200403212114.15565-1-ykaukab@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200403212114.15565-1-ykaukab@suse.de>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_195835_755901_7B42C055 
X-CRM114-Status: GOOD (  11.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: andy.tang@nxp.com, linux-pm@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, leoyang.li@nxp.com, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 03-04-20, 23:21, Mian Yousaf Kaukab wrote:
> The driver has to be manually loaded if it is built as a module. It
> is neither exporting MODULE_DEVICE_TABLE nor MODULE_ALIAS. Moreover,
> no platform-device is created (and thus no uevent is sent) for the
> clockgen nodes it depends on.
> 
> Convert the module to a platform driver with its own alias. Moreover,
> drop whitelisted SOCs. Platform device will be created only for the
> compatible platforms.
> 
> Signed-off-by: Mian Yousaf Kaukab <ykaukab@suse.de>
> ---
>  drivers/cpufreq/qoriq-cpufreq.c | 76 ++++++++++++++++-------------------------
>  1 file changed, 29 insertions(+), 47 deletions(-)

For both patches,

Acked-by: Viresh Kumar <viresh.kumar@linaro.org>

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
