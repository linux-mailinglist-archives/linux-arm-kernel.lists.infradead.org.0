Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECB1D14FB79
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  2 Feb 2020 05:42:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:To:Subject:From:References:
	In-Reply-To:MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aT/Cwv4pBBB0qTpWegfJXgKRuwl6tb3aonTKz5xvqd4=; b=JeCEk/U1+6+LPP
	k/R6H2QfqBvgpDGPXhTS3Znqp2YnTtLRUgWuvwKKLZayYPBNwX+vZgmtw9qY4qZBCOhm9hoI6MTNd
	WLGdPfIq5ISX2pqsvb1Qm5ikHRx8z1Od6oPGMEXTMZcKfYGDcGV0tFP0pV/XzSpcf3MfS9GIKf6T6
	YN4p1b6SUhx0FyRVOZew75y5knJskvlaNNkXIAQiXTwBPmyg0ylApGMyEKnffSk/cgrlC3vjqzf9k
	OK4HjEo83wXZKg+SL42kzTSHxm0UwTIHyi52TAxdRh8hMkrgO76Dw/mDx5+ktYe/ejD+9RIVfSu7L
	XR8ec5pXkwR732rZs9Ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iy75L-0008AK-TV; Sun, 02 Feb 2020 04:42:15 +0000
Received: from mail-pg1-x52c.google.com ([2607:f8b0:4864:20::52c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iy752-00087C-RP
 for linux-arm-kernel@lists.infradead.org; Sun, 02 Feb 2020 04:41:58 +0000
Received: by mail-pg1-x52c.google.com with SMTP id j4so5901191pgi.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 01 Feb 2020 20:41:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=message-id:mime-version:content-transfer-encoding:in-reply-to
 :references:from:subject:to:cc:user-agent:date;
 bh=H12+mHAIL3bb+dr51PEHEZZsNDqvfJx+5YVGqZOlIqM=;
 b=W5dSLRFIZDasi2ZLWn6GgNC7sX8MGtmEFZNWKCJEsFT6QnVU5QO/HMBRn3UmnFMwah
 0c0UqKk4IJA0yKpbuKsWSPeBYdmgJVIL5EqGxl4qjIuEM1YkvfyR+5+scSlJvdK6HSUZ
 SYc4puNrwGTpUmg8BQtNAfjxntKMuVlTW8H5E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:mime-version
 :content-transfer-encoding:in-reply-to:references:from:subject:to:cc
 :user-agent:date;
 bh=H12+mHAIL3bb+dr51PEHEZZsNDqvfJx+5YVGqZOlIqM=;
 b=akS8q2M9biQUFYIN9b5oXkEnQ3K/SmAzRMrHoMQmLmJfQ1lJfBNXoPbPUQBI1v1KSj
 9c/IT978/uweYlgYZMLOg8NryXdBMuUolYqMA+igaTLaqMrrI1S/NHg29DrYY5cz2Zk3
 T1NxBj5tQ7tbkIR0O9tGw3sAvcfXuECke+4zDxyDWhFqFZmcKMt/ZQXg/H64p0FPfkJw
 LdmUMJyeZUSHU3xwGXwKU051CqpVnXKmtJBF2B5dHVdjHRMkXh/El7nuzsfG4J+IHn3C
 /FCo7c23Fv0oXJSa1oKdU1j3kL3kt+2emjFzkk69L4jq325ekfJ5Cipk7FaWCpXvh9HC
 sceQ==
X-Gm-Message-State: APjAAAWh7M+NBmPKLzMRyX6f5tsim8RDI4BIPNT5vBtWK3m/N8Dd+M3C
 ewmIMB95N7Gd2wk3YsVB/HgXSw==
X-Google-Smtp-Source: APXvYqxWj4RW/5Bk7AHjnHF/W7VHqk96YwJGSAMNrtEvaEZ6lz2Ds+BjrwBXQxmcbz0eS8CS+qsqjg==
X-Received: by 2002:aa7:96b6:: with SMTP id g22mr5878006pfk.206.1580618515603; 
 Sat, 01 Feb 2020 20:41:55 -0800 (PST)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id q21sm15215761pff.105.2020.02.01.20.41.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 01 Feb 2020 20:41:55 -0800 (PST)
Message-ID: <5e365313.1c69fb81.5bf81.9c29@mx.google.com>
MIME-Version: 1.0
In-Reply-To: <2edca4b54ee6b33493e0427c17de983d3ce3012f.1580570160.git.saiprakash.ranjan@codeaurora.org>
References: <cover.1580570160.git.saiprakash.ranjan@codeaurora.org>
 <2edca4b54ee6b33493e0427c17de983d3ce3012f.1580570160.git.saiprakash.ranjan@codeaurora.org>
From: Stephen Boyd <swboyd@chromium.org>
Subject: Re: [PATCHv2 1/2] dt-bindings: watchdog: Convert QCOM watchdog timer
 bindings to YAML
To: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh+dt@kernel.org>,
 Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 devicetree@vger.kernel.org
User-Agent: alot/0.8.1
Date: Sat, 01 Feb 2020 20:41:54 -0800
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200201_204156_912015_41D53CA8 
X-CRM114-Status: UNSURE (   5.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:52c listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

Quoting Sai Prakash Ranjan (2020-02-01 07:29:48)
> Convert QCOM watchdog timer bindings to DT schema format using
> json-schema.
> 
> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
