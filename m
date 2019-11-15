Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76F80FE5C2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 20:38:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:From:Subject:To:References:
	In-Reply-To:MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cfm9OAvoSOkRPS76XSE7FDUzaUpYRLvnUmqDHHRq6QA=; b=ZR8Xc2fj4Jjm0/
	Jr6Sk+VtFUtnW5EhpFxTL4N424mUgBZeXKHzEq9UzVCM8ooqMD+p5QK8vaN/P92rwbTeBH0s8Sg2s
	+TKrYGLvbRKPZaS6HQP8wlzyJWdidww1UaqtBP0rrpWympA9TR5ZNKvATGF2+T9ZVudMJWMBG0Vit
	/2IVCtndoRe/QWqvCliTyi9q1Xe9NGIFNFYpRG47LaZQqJFPMVpTD+SBpzJqMIbeeXelGCa+DX6N4
	6di597n3EqOYnaMK4tIDsi0qJnZcZ84R3sN43btPKseS3jgbKwVx0TjHjrivSad6+tZ+vUOPoxxmt
	fM93euSLBlZG3/tQMdhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVhQb-0008Gd-QI; Fri, 15 Nov 2019 19:38:45 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVhQN-0008Cd-TZ
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 19:38:33 +0000
Received: by mail-pf1-x442.google.com with SMTP id c13so7159492pfp.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 Nov 2019 11:38:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=message-id:mime-version:content-transfer-encoding:in-reply-to
 :references:cc:to:subject:from:user-agent:date;
 bh=N3RglndAty+Q/Su9LZ87Avtb9ayjrGHyeAiCuksi9yI=;
 b=UtGcVOPwv+Sz7IoEtQf5f6u5Bwgm0baqY2Pm/LkCq5Y+myds1WEgPKSc/h4IFVnGfM
 4cJdrIwH0moWO54hBHgBqhBcFoRIB5Gi6eNmpMXxG108ONJdy3ibW5lS+7A3vvNUpUPU
 hnztaqL+IFnT/g0h1yPCraXD14WhOHqnkPB8Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:mime-version
 :content-transfer-encoding:in-reply-to:references:cc:to:subject:from
 :user-agent:date;
 bh=N3RglndAty+Q/Su9LZ87Avtb9ayjrGHyeAiCuksi9yI=;
 b=qnfNPSMW6FhOsxp5o7eIM7Ftp/4F2/Bi0g867/N+Pg7q2o5+auBrWTO0H5EEN4OQaK
 Xu4eHej6jJxdgzp0muBbH9hp2u7HEBIfZhNRsVyzNbXmYfRDB2Qan/Zwko2NV6kuPoXv
 zjbFahPrhTtdho/s3H1NDVEck/LJAqEQxxkALZGbSMrZl9REfnNcjfCdvdijnwcD4rTN
 OV0HcSvARCRC0tcoUY89wINgWXqHTjI4Tz/pB71HAsn3/dfw5fWKL/uKm92FwQV2iTbt
 zGzZAloOhEJ8fSMhuY76QSyLt5pnsxSHeV8eGAjUyj5M3hsaG/F2k2Nd0NWedhyMLnKy
 rVjA==
X-Gm-Message-State: APjAAAUhvIfs6O3QR8PWX9Ju44JtfeMOKe5xrjxe+HIZ5uHrUa39euai
 HFunSeBAN/51MDNUVHiRFyRdRQ==
X-Google-Smtp-Source: APXvYqyIIQmbO8Jh5LsYVJAkG9qSWUVFtjTBJtmPW9PBcFmGXEA3YzAVQ7//IHl8Rf9YfaPCT7oA/A==
X-Received: by 2002:a63:395:: with SMTP id 143mr12694732pgd.93.1573846709916; 
 Fri, 15 Nov 2019 11:38:29 -0800 (PST)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id 82sm11338835pfa.115.2019.11.15.11.38.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Nov 2019 11:38:29 -0800 (PST)
Message-ID: <5dcefeb5.1c69fb81.757a7.0d4f@mx.google.com>
MIME-Version: 1.0
In-Reply-To: <83394ae827ce7c123228b749bcae2a2c470e88a4.1573814758.git.saiprakash.ranjan@codeaurora.org>
References: <cover.1573814758.git.saiprakash.ranjan@codeaurora.org>
 <83394ae827ce7c123228b749bcae2a2c470e88a4.1573814758.git.saiprakash.ranjan@codeaurora.org>
To: Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 bjorn.andersson@linaro.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: msm: Rename cache-controller to
 system-cache-controller
From: Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.8.1
Date: Fri, 15 Nov 2019 11:38:28 -0800
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_113831_978153_FF837003 
X-CRM114-Status: UNSURE (   7.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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

Quoting Sai Prakash Ranjan (2019-11-15 02:59:11)
> DT schema checks for the node name 'cache-controller' and enforces
> that there has to be a cache-level associated with it. But LLCC is
> a system cache and does not have a cache-level property and hence
> the dt binding check fails. So let us rename the LLCC cache-controller
> to system-cache-controller which is the proper description and also
> makes the schema happy.
> 
> Suggested-by: Stephen Boyd <swboyd@chromium.org>
> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
