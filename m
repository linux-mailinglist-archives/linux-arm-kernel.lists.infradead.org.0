Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9327B150E46
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 18:00:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:To:Subject:From:References:
	In-Reply-To:MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k0tjC0sqHnBfqfQTsgaWgjm+tWJ1WMI7ViTmmk9ARAA=; b=KWw/dzm/3rpzC6
	PFDUeBMiSxRZZ+HINpzo499dpsynFCRy9ZoVKf3X8uX0Q70ruR4nY31X/mzLy9+1JHqyi9+uhXlwS
	VS767/8P6Dau2vFiR3xSAhp15+3jDoejaF1Bd6/gVOElmorP5r1g81mkOFwgwBNYFzcvvoUuV2Qpx
	Vr8jwXuBz12neHdUI6i9FV7JID99AwfIPCCKyAT61D4aXR6tfSy2oV09iKhkVnKdhG58FE3iJgdia
	waefhH0l8pYOjNI22MHYMuh47dQkwqyYnLO/3CRFEU/REVlW8jwmWFE8z/59XQhieFEOmFjgZKMHl
	S7tx25YPrP01yOuM6PPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyf5B-0004Wv-2r; Mon, 03 Feb 2020 17:00:21 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyf54-0004W7-Iu
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Feb 2020 17:00:15 +0000
Received: by mail-pf1-x441.google.com with SMTP id p14so7885595pfn.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Feb 2020 09:00:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=message-id:mime-version:content-transfer-encoding:in-reply-to
 :references:from:subject:to:cc:user-agent:date;
 bh=+bbS1LurHkbiJrVa8DwGY53PnP/qS0ULTiVuSYs5A3E=;
 b=QjnvLUY4Q4hhfq3l2iwv+1X78eBmhau5DSyA/OBUYOQTo7bb7ep2XKYKghIh3ErkDd
 IZFNWonhBADCHxXVXrF5wA4/tjMGNQMg+h06spG6a6CTAKE8J4qvXYpFAP4mY6hPQbnm
 wMnNfqk/rz0xpnssK+2Td5w2GVQGzRoArLMDk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:mime-version
 :content-transfer-encoding:in-reply-to:references:from:subject:to:cc
 :user-agent:date;
 bh=+bbS1LurHkbiJrVa8DwGY53PnP/qS0ULTiVuSYs5A3E=;
 b=eRqs0eAlbiIuaHnpTjBhwW6XVfuhng/OvGygo0pPGjuS8LhfKV6gKKKFK5HtZ2OvvU
 lV6ABSob+H3WEZwB75RY4W7Kp68dl0ihOYn4HLqjb2wtjTbe2U3jYMrf52+05w+olbsH
 TKvrUyD8N8FGa7sLavcKRnvwS2lD+ZJrwUP/0yNJBad45d17+/WxF/JFY16Zf0cioNpq
 UoBEcP266R9ctrr3VrcR7JUj+1ij56KzaaNYeihzVeUavs6MOwNMdfcibBDDyMWrlvVp
 QvxbNaEQP1zZRSGLaH/Q+RvA/H3KRLtaR2wOgrDWe7YnYm6nUOm2RLn7ldnMJEpjgt6f
 R4Ug==
X-Gm-Message-State: APjAAAVdwTqwRGMAmTPuM9Wf81HTrrgx7dzhGyFp+L+9Qd9HiQXvXddr
 RvjpvPjp+xqcKhNoO80txRQkLw==
X-Google-Smtp-Source: APXvYqxfeVAORXMLObE3gAN7OxJt/+U7e9kSIe1Jr0RUJ3rinUWbypd7Od3IggLAS+/64DWu/MihZg==
X-Received: by 2002:a63:7907:: with SMTP id u7mr21605031pgc.138.1580749213150; 
 Mon, 03 Feb 2020 09:00:13 -0800 (PST)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id v9sm21759786pja.26.2020.02.03.09.00.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 03 Feb 2020 09:00:12 -0800 (PST)
Message-ID: <5e38519c.1c69fb81.d469f.9b0c@mx.google.com>
MIME-Version: 1.0
In-Reply-To: <3726ea2e21cffd2f9667aaa0430003b2407ed74f.1580632081.git.saiprakash.ranjan@codeaurora.org>
References: <3726ea2e21cffd2f9667aaa0430003b2407ed74f.1580632081.git.saiprakash.ranjan@codeaurora.org>
From: Stephen Boyd <swboyd@chromium.org>
Subject: Re: [PATCH] dt-bindings: watchdog: Add optional interrupts property
To: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 devicetree@vger.kernel.org
User-Agent: alot/0.8.1
Date: Mon, 03 Feb 2020 09:00:11 -0800
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_090014_644996_6A54C43C 
X-CRM114-Status: UNSURE (   7.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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
 Guenter Roeck <linux@roeck-us.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Sai Prakash Ranjan (2020-02-02 21:31:15)
> Add optional interrupts property for specifying pre-timeout (bark)
> interrupt on QCOM SoCs.
> 
> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>

Maybe there could be a description that says it's the "pre-timeout
(bark)" but I'm not too worried about it.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
