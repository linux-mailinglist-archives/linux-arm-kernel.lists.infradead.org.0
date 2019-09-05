Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3848A99E7
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 07:01:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lHPmQfFQtF4vS6jmcI8BOorMQRFhjpvuAYOuJR4YrxQ=; b=utvV1eDA6MFuDO
	d7usnNwxOblzvCzbh6tGew5Y5XHfgiWown3pcKndiB/NYwbAgoVG36cqs5EzWUAa/L36agBMLffKp
	LMme7q6/u8NB7jSnjy5grbBZ+rNW9U2tkf5wVKw1qf/8EbTGclYaKtQ9BubRcqm/fNfi7Z4tmJKK5
	Pu7uCcdcilBp72NDkdPGI1D+2G+sCEu16+DDaSdcCNfeQqMkuNxpTKOi0c492SweJTVNXj+2wHKJm
	ihIQMjLjMJtk7T0S6UsoXxHC4AC+NBsF5L664/xTs1cYzzBfVTFiDCNqUPQrfVAT1RBB5/38IMiGy
	eJ5m1DENxQ21eUYdwEhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5jtt-0002HC-Ee; Thu, 05 Sep 2019 05:01:41 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5jth-0002Go-7C
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 05:01:30 +0000
Received: by mail-pl1-x642.google.com with SMTP id x3so662468plr.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Sep 2019 22:01:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=SUBeohh+HfbbNLC2vNWJGf1wy1Gdj58+BXfyMUrKjoc=;
 b=lQNQsZxYsESZuNfE0/YmQ6QEjfkBMP2b5Cq9hW5SSuH4ZmInwZ+bEdgwHTQBKexs0l
 mm0PIiuvSihKeJKrtU55xFyIXXKbfpkaUUHA6LciwO+kh3SqCIR9dRisUpjIKrdmLCH/
 aEU5hKRqdQraaaOa2/U1+8xQssGgrCYcV84OknuhvYOam+Zusks1aoH2zBwhNfOdrPqw
 WPpvMOU8e5zTBL/stzc3L/IDjgE+sj3e8ePSTkncNQklhRJacblNFNi5XBs2m3VZpkLp
 PzcLlF6mvd+UN7b3K2oVTrAaCu+B9Jc1ZCiBw1+rbT9eITC/YqJtkEA2jAMHxi6euTGE
 tnoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=SUBeohh+HfbbNLC2vNWJGf1wy1Gdj58+BXfyMUrKjoc=;
 b=kkfL+N9NcmY+J93W7XwNtx9lw00LFmPOMABdyCD2OcPk6ALemQLtA6t9VK3CM1Vzar
 1I8Hp26+9NkQgw1Ew63vD8dxVNt0OiIUG/mIjBcY+f3bOCmYyWRvs9I/tNbMvZkYpqXf
 drgsYmMH0JtlARbrpJgHxE1MIrcUyXyTqQz5msDnSHXHsHIQmDkHCIaP/EJ5nUjW10ju
 gYjb/7WnTxaFfmKmlmgaBcsVFZS3TmVLAj86xPg7Di43u7P0hmwj97GkdI7T1o9n+h3e
 aOZRNPS3jPbp5AxrJmw8kTAeNWDM3SmcXdhPO7WQtxADQqP9Z12lTL7K4tQjeEzp7rjD
 mMlQ==
X-Gm-Message-State: APjAAAV2Iuaxj0zhrX88QMbyjdD1OnU+65AYPbJX72DxIR+LO/wncwPV
 NA7gRhxUnFhdmiCTBxiIVuKFtQ==
X-Google-Smtp-Source: APXvYqxLKp/hQTBJFZg4bq2XsgfOo5v+1kCisfZEZTN8ZhsozLd3tLyYaMrWDgM/E+T8p4eXRva++Q==
X-Received: by 2002:a17:902:a58c:: with SMTP id
 az12mr1410313plb.129.1567659688106; 
 Wed, 04 Sep 2019 22:01:28 -0700 (PDT)
Received: from localhost ([122.167.132.221])
 by smtp.gmail.com with ESMTPSA id p189sm1181543pfp.163.2019.09.04.22.01.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 04 Sep 2019 22:01:26 -0700 (PDT)
Date: Thu, 5 Sep 2019 10:31:24 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Sylwester Nawrocki <s.nawrocki@samsung.com>
Subject: Re: [PATCH v2 0/9] Exynos Adaptive Supply Voltage support
Message-ID: <20190905050124.kopzxxouuuta37n6@vireshk-i7>
References: <562dd2e7-2b24-8492-d1c1-2dc4973f07be@samsung.com>
 <20190819090928.pke6cov52n4exlbp@vireshk-i7>
 <b831d7c5-c830-fd65-20cf-02e209889c28@samsung.com>
 <20190819112533.bvfyinw7fsebkufr@vireshk-i7>
 <b7093aaf-ea56-c390-781f-6f9d0780bd8e@samsung.com>
 <20190820030114.6flnn2omeys3lih3@vireshk-i7>
 <06ccff05-2152-4bcc-7537-8f24da75f163@samsung.com>
 <CGME20190820092123epcas2p2170ae19467a5fb19fcfc1acdbecf9381@epcas2p2.samsung.com>
 <20190820092113.gojhe3romdnvm7eu@vireshk-i7>
 <4e6379a7-0d4b-8e0d-c225-49976b2587e0@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4e6379a7-0d4b-8e0d-c225-49976b2587e0@samsung.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_220129_266285_F2DE0F1D 
X-CRM114-Status: UNSURE (   8.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-pm@vger.kernel.org, vireshk@kernel.org, b.zolnierkie@samsung.com,
 linux-kernel@vger.kernel.org, krzk@kernel.org, robh+dt@kernel.org,
 kgene@kernel.org, pankaj.dubey@samsung.com,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04-09-19, 14:37, Sylwester Nawrocki wrote:
> I have changed the code to use dev_pm_opp_adjust_voltage(). I was wondering 
> though, what did you mean by "triplet" when commenting on this patch
> https://patchwork.kernel.org/patch/11092245 ?

The voltage value in the OPP core is stored as a triplet,
min/max/target kind of stuff. You can check DT binding for OPPs and
see the details. That's called as triplet.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
