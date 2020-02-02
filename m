Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E906714FB78
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  2 Feb 2020 05:42:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:To:Subject:From:References:
	In-Reply-To:MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J5gXOmmK7391LGNUk9XpO2q9Jyh8DYOB4aolyHsYVB8=; b=G6f6oXHQltusp8
	nuDvzKR8PsjtBo7ziAR53DTGKA5bmsjQxoYUnBjOd2QekFlInrk2AUf/WJ9pJCrxGI4ZmSL053CXh
	5gS5ephK5sgoYBLEnQqIYoKKMD3m7nld+GTC3i8JrPJJxbmLg9knLhYGU7MphbT2AzQIGU67tIE+I
	Y8XRUKRo4BytvSHNhoNCkgysYUmnOsWW93BzxXOZyuK1/L0UfwG3LkPw8J/0dyE6esfOY/ruUVPtI
	K2sWQezBan/kJ1GCwsjYtyIco95mbuk/dpvNFrLDq2cfkCTG6vbHIx9Nzbvwvz/rImvsJGI6tfX7L
	TqNiUf2IZ3muNY7OREPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iy751-00082f-AY; Sun, 02 Feb 2020 04:41:55 +0000
Received: from mail-pg1-x532.google.com ([2607:f8b0:4864:20::532])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iy74v-000825-Jf
 for linux-arm-kernel@lists.infradead.org; Sun, 02 Feb 2020 04:41:50 +0000
Received: by mail-pg1-x532.google.com with SMTP id g3so178658pgs.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 01 Feb 2020 20:41:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=message-id:mime-version:content-transfer-encoding:in-reply-to
 :references:from:subject:to:cc:user-agent:date;
 bh=jX0fufKYZvyZ8epx+GgARD/j3hIwfF8CK7/JT+nLQUg=;
 b=F+wcw4jJSFXFdzlfMyI59VpB8DLk10MQ4kH6+dKKDRP0qzO0vGHwxvsD/1ag0wWA3s
 XQi4UvScdhWg04rKZEp3M/puGRnXV2e4K15vJdtGwNF6WCQspP6iVdw45fgkdZ8aP4QJ
 OxPcEXVMkPU1BjSCBDmOO6gvymb2SrhzQilJY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:mime-version
 :content-transfer-encoding:in-reply-to:references:from:subject:to:cc
 :user-agent:date;
 bh=jX0fufKYZvyZ8epx+GgARD/j3hIwfF8CK7/JT+nLQUg=;
 b=exXepid5hYMezqo7eujZV6GhruRLjWct4PWqCHsPi80DxfcDa5BHzq7W0AS8Sb4sT9
 QQcz92DsPjIWdb0tRIqNIqukYhM59jKwV0UIPEFZ3eLPqUA2X06UKpYvD0XdDWqhiil8
 T4LYDdG7FdqEMcSQLfP20MRRBQs5O6cRSAOss+M4WxefSGSaaHQdc465kPfDHUAEXR2j
 jkRbVZzFqh5C78cZSZR3O1lqFlz4lwTcA/3nFDBY/HdJhuDSUD00xR8Xp4M/4fpt9O/L
 v8N+965KPNqwYA7sWcWDtblZAD1nH8ddW/W067NtBLZIsrRta1H782RwoYW7V2qsn85d
 Na7w==
X-Gm-Message-State: APjAAAUdFrUYWG0RlptX4fkWv3YM8bYg/BLFvarq1oOfjHym9H815JHr
 YNo40gRaOOICbtmDw5n3uUeZOw==
X-Google-Smtp-Source: APXvYqztpJZGE14XPIWxWqPTuQSH8BXdLKg6SY8K4m68pmf4NKVNkv30SL8rm4M4AMOz/D4RUnCJWQ==
X-Received: by 2002:a63:f312:: with SMTP id l18mr10829165pgh.178.1580618507301; 
 Sat, 01 Feb 2020 20:41:47 -0800 (PST)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id b18sm4977615pfd.63.2020.02.01.20.41.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 01 Feb 2020 20:41:46 -0800 (PST)
Message-ID: <5e36530a.1c69fb81.680db.f620@mx.google.com>
MIME-Version: 1.0
In-Reply-To: <ff71077aa09c489b2b072c6f5605dccb96f60051.1580570160.git.saiprakash.ranjan@codeaurora.org>
References: <cover.1580570160.git.saiprakash.ranjan@codeaurora.org>
 <ff71077aa09c489b2b072c6f5605dccb96f60051.1580570160.git.saiprakash.ranjan@codeaurora.org>
From: Stephen Boyd <swboyd@chromium.org>
Subject: Re: [PATCHv2 2/2] dt-bindings: watchdog: Add compatible for QCS404,
 SC7180, SDM845, SM8150
To: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh+dt@kernel.org>,
 Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 devicetree@vger.kernel.org
User-Agent: alot/0.8.1
Date: Sat, 01 Feb 2020 20:41:45 -0800
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200201_204149_647262_57543AE7 
X-CRM114-Status: UNSURE (   6.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:532 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 linux-arm-msm@vger.kernel.org, Douglas Anderson <dianders@chromium.org>,
 linux-kernel@vger.kernel.org, Matthias Kaehlcke <mka@chromium.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Sai Prakash Ranjan (2020-02-01 07:29:49)
> Add missing compatible for watchdog timer on QCS404,
> SC7180, SDM845 and SM8150 SoCs.
> 
> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
