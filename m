Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39227FE5C3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 20:39:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:From:Subject:To:References:
	In-Reply-To:MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hCjrlLHc3nAMZE4e9rGynIx3kShDFVTCXpUIU8dag3E=; b=tpgin+WXgMrL+M
	HzXbpw5mbylL6MVEsM3svCFD383Ae2PsJDJFvSe894SRi5zQgF4TlHxnDfjoL99UiSNf9x8+PDSmz
	qQUl2YVnpq6IbeUFHx7dLCMFcytemSKagO+G6qYrU4Cds4SxIbbzGJVU05DWBmKfji+YgO7iDlh9N
	wf6/j8fLiK1/un/AxdtHreSOWrhuTWYRSR298xy4028/lym/gmjtx5VR7GN6QxKGEmrm/X7kGlbtG
	DvN3akDQ+rPUKi/9stlgwvoEjyXoGOqkMXIwNM197C/tEAG+lFB1K80cr79SiAiPa51W99o04JnED
	aPIytQ3f4nO3wBw6jEmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVhQo-00006a-Ql; Fri, 15 Nov 2019 19:38:58 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVhQS-0008IB-7J
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 19:38:37 +0000
Received: by mail-pf1-x441.google.com with SMTP id 193so7130587pfc.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 Nov 2019 11:38:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=message-id:mime-version:content-transfer-encoding:in-reply-to
 :references:cc:to:subject:from:user-agent:date;
 bh=rpIokldTgdr5Exrhz1mWV7HaLCSuNS/NOSl6iO2Uvg8=;
 b=UXpz2/GGf6m28T8JsRJL22/FmaujD4Zkm42D4hqF1gSN9xyzIKBP3jZPikdFoLutN0
 1QwHjpjumV9GiZEurjnQujKejh1y/BRNClPVP3v+DWWoMqXo/U/+jfny1z67SpJ8Aedd
 x6F5L4BYk9ZEUUHmuomaBUpqdhxgthCmLWzwI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:mime-version
 :content-transfer-encoding:in-reply-to:references:cc:to:subject:from
 :user-agent:date;
 bh=rpIokldTgdr5Exrhz1mWV7HaLCSuNS/NOSl6iO2Uvg8=;
 b=RrDhjJeS+itVy70HT+PVd1iVsw4/3LnH7xudjV9QWQN6wcF8Ne+9zxKFebAfABj1E9
 G4O1yowfVzuXUsFqF3UTYqHm9Xy+Jeus67+ivD4AXbrsEeLKqqlTgYgs5jKHZerdDh/o
 4EHlxhZlYzrjZkrhtQWQp87RVNBi8J0Wdyd5IL/8EbhLIbpowAOGl/F1tJ9oqDyHiWJq
 Tl9WYFd7jepOsujfT4OOdfxFCRYVj8nC1yZTBFsrusCnRylQfSLJCjWVe/rNEDaGO/Pv
 lPzAbJhw3NDT8UdVgIZ1Hpoo58K7lI+WQHqOvTfCpc3tnbjSoLSwe459XgXl5Yb6Lkis
 Y1DQ==
X-Gm-Message-State: APjAAAUp/Mlyccg6NIUncyKmYzlZrlJ3UUSSt4uJpi37CK2xwA4PJwG7
 86O5O4IM1CiGtI9lmUE3yA7XuQ==
X-Google-Smtp-Source: APXvYqykqc5dyf2YeTH9F9RX5Ivj9h24yWKDFvAQmQ98bDBv24JthZfMkfiBfpD1ahLZlS9AfiPdcg==
X-Received: by 2002:a65:6145:: with SMTP id o5mr17611208pgv.38.1573846714978; 
 Fri, 15 Nov 2019 11:38:34 -0800 (PST)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id h23sm10528899pgg.58.2019.11.15.11.38.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Nov 2019 11:38:34 -0800 (PST)
Message-ID: <5dcefeba.1c69fb81.258f2.f70e@mx.google.com>
MIME-Version: 1.0
In-Reply-To: <a2bb92de65e90768bf1d6b8c0b7fbd43cba704d2.1573814758.git.saiprakash.ranjan@codeaurora.org>
References: <cover.1573814758.git.saiprakash.ranjan@codeaurora.org>
 <a2bb92de65e90768bf1d6b8c0b7fbd43cba704d2.1573814758.git.saiprakash.ranjan@codeaurora.org>
To: Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 bjorn.andersson@linaro.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: sdm845: Update the device tree node for
 LLCC
From: Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.8.1
Date: Fri, 15 Nov 2019 11:38:33 -0800
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_113836_317264_6C3CF37C 
X-CRM114-Status: UNSURE (   6.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 Rajendra Nayak <rnayak@codeaurora.org>, linux-arm-msm@vger.kernel.org,
 Doug Anderson <dianders@chromium.org>, linux-kernel@vger.kernel.org,
 Rishabh Bhatnagar <rishabhb@codeaurora.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Sai Prakash Ranjan (2019-11-15 02:59:12)
> LLCC cache-controller was renamed to system-cache-controller
> to make schema pass the dt binding check. Update the device
> tree node to reflect this change.
> 
> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
