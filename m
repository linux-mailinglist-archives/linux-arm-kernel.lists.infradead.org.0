Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2428A20AB8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 17:09:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/OaVMmYLJzseh3fomt9O2UljNbxyAX/hQlRuO/Umh+U=; b=syxTM+kJaywin2
	1B8wSuzpqpupzBOnC/IHyBK4lzI1fBnY3y2UGQaekQmjM/TKVEHrY5R6G1cC18Zmn1P9+tWHc5Ax+
	N+3z5NZeOyMC1iPDU5DMcGKDBhZXxIFfFu72k+RlJ8q6Bt1/PVJP7ARkS0QHz3aUI/gUsZqW8FfYE
	4JpDeMcfmmdUy/0gdINMaj5OfcrPy4cwb81gh5y/PQBPAe/67n8obUhbhgAUdKM5lZ+3zkKOGkoTH
	RdIMRSMv+5g4yFN4ma+C2bq+9+JMDo2Lxpd2CZg4gmB/qxi36ppfqbHfx35eL+8Tsp6h6Tu3rejwM
	P8FUzNizJAvfBU7oVnCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRI0v-0003s0-EA; Thu, 16 May 2019 15:09:45 +0000
Received: from mail-yb1-xb42.google.com ([2607:f8b0:4864:20::b42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRI0h-0003ge-1m
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 15:09:34 +0000
Received: by mail-yb1-xb42.google.com with SMTP id j10so1398449ybh.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 08:09:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=IgysBhB0eSe3WXZD/YzKFG/9Zc1q4SR6XK3+qBsXPiI=;
 b=F9+Zgm5UPLYGu4CChINabPB1BdUni4VjDmicVFOv0uf4dGpHHNRjXqOv91RufDTfUa
 yM/KQAw2QIqpph64Cs7R9PnFtrnZBV0EGhHG8q/4Bu8QnzP/4Umzz1kNSfON8GHPBi7V
 2MaCQrI1W8L+Lc7HbBO19zFtP0Z4q9Aqbi84Qave42+0tndwfQY7kF26tunFacAMEoDw
 Vt2xPalOklIlDhJsZTXPSEmDrM4/QyuKPzh2iJCKLMHSCIeP5hnhQq1/KcpoSYmGkN0E
 hN3NMfDTxeoSLoEljaJ+tZjN0JxB5YuwIm7/oSIi9V1vq7wHngQYcPbyljZcF7+wf4/8
 oZSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=IgysBhB0eSe3WXZD/YzKFG/9Zc1q4SR6XK3+qBsXPiI=;
 b=pCmi4gfQhJ1kBOOdWqDWDujNyEH6KYu9QQ1Wk3Nm1uF4bBtpNRtdIm5YnkdzgWlRLA
 beSfZFdYT6ftpxZYobOUudfIp/QdyY/IFN8xZYhrpdicHPdIpVZ2L66Uuh6Bb1dIHO2F
 afDJAz8k61N44OLMRQfEpd2VGjmxg+OPQzWc8J5ASJI4ZzqUJ6500MkCx0Di4VqcS8bF
 5OY8Kj9CO506Gh0KX2f70QCxHBokTbKig3Y1jcr/EpR89nlnK3lKnObQXo9DlsschQoh
 v2bUlhpMKo8sYL1gfkrsC6kiAnLjtb5Oe6d2CY0jfcLa8AdiHvX14rQNDMRdkJqaG6xu
 DiYg==
X-Gm-Message-State: APjAAAWSfdF1gwfrpnI7IBt64DiYw2Rl1zAmX85gv35xvJuPW4PEPnud
 +HV6StLWpWK27NX2mA9NXc7TOw==
X-Google-Smtp-Source: APXvYqyE8qH7w13gZpyJ7mHE7xAmLUnsc61vA1kIuIRzW9+wOAl3LamcG5mZGcTARODkizyqumezEg==
X-Received: by 2002:a25:8249:: with SMTP id d9mr23071213ybn.320.1558019369883; 
 Thu, 16 May 2019 08:09:29 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li483-211.members.linode.com.
 [50.116.44.211])
 by smtp.gmail.com with ESMTPSA id p83sm2071973ywp.36.2019.05.16.08.09.25
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 16 May 2019 08:09:28 -0700 (PDT)
Date: Thu, 16 May 2019 23:09:21 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH V2 0/6] coresight: Fix snapshot mode
Message-ID: <20190516150921.GH12557@leoy-ThinkPad-X240s>
References: <20190514194018.23420-1-mathieu.poirier@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190514194018.23420-1-mathieu.poirier@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_080931_480201_5BAA3250 
X-CRM114-Status: GOOD (  10.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: suzuki.poulose@arm.com, alexander.shishkin@linux.intel.com,
 coresight@lists.linaro.org, acme@kernel.org, peterz@infradead.org,
 mingo@redhat.com, linux-arm-kernel@lists.infradead.org, mike.leach@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 14, 2019 at 01:40:12PM -0600, Mathieu Poirier wrote:
> This is the second revision of a set that fix miscellaneous problems
> preventing snapshot mode from working properly when CoreSight events are
> used.
> 
> It applies cleanly on the coresight next branch[1] and will be posted
> again when 5.2-rc1 comes out.

I tested this patch set and it works as expected with ETF / ETR on Juno
board.

Tested-by: Leo Yan <leo.yan@linaro.org>

Thanks,
Leo Yan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
