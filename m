Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31B0F17486D
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Feb 2020 18:32:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eC8GvdZJlRj23j90AigxIjxDtfFCskpu0PfJH+jRUww=; b=AxqxNckm3tLjmc
	SmMOLDluJuKJIDtGgoI4rCxHMdpKb5zjIh2yOw/x/yOmQiqSr0DrviNIm2frSmfl09mHVVQKKx4xR
	vIyRJzNhGauYhhfeb8eFd0p+rTtM5mWxZNGlcGGYbIGzPrsys7bemGbl8enRz55vK0/5SJgW7qvh/
	fiIfqtPfz/0+TP2RefHgGbxGWL70pdHYng/C75TvodRFq3FKXNpEjk3kXMG/WZYx7zoZV4xeMZ5xa
	EQ5cj7qPfbZ5l51UkMEuG+ZMm7hXxIeq9gRrnXoz5GS2Hc5x+GsDs9IKKDvhCi1HqsJxDFkA+jL7J
	iaitbDSRwTG35Onj+nmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j85xh-0001A7-VZ; Sat, 29 Feb 2020 17:31:37 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j85xa-00019T-TI
 for linux-arm-kernel@lists.infradead.org; Sat, 29 Feb 2020 17:31:32 +0000
Received: by mail-wr1-x442.google.com with SMTP id v4so7222220wrs.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 29 Feb 2020 09:31:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=gIWhpXkGhBdD7D4tCRq8IhuPOVGlHh8cgQBYQ6BUTQw=;
 b=QVtbZxL4BTuOxWG9U7zurT8eoEW0kIhCosDTS6Y/48DrOg8qUH0kOS2rvyykW/zWZ2
 QAetKLAw6hJCoqsbII4eHjnCCELiBOm8pnZHs5QmpKLTYHmaznrsrb0tpJfDJQ7Hs/Nj
 0ZPNxzQbF4rk1Sj9k/DmNS31m/LZqXrk0EIj7fYomlSssHR8jjFRqQSPryvnxMlj/oQu
 e/RBcwAWRFuX9r2qRrOUtVvjXY4ZpPBEBmUnslSZCpUfeM0YGsJxaR5J44dkxv3FpuIi
 U72YHyQ2VfOMmJCXEJ0BK1vXYd0KJ/e2RDZtfmu3gEjfZDfZogCJegkZgt9q1ce4AJLj
 JAVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=gIWhpXkGhBdD7D4tCRq8IhuPOVGlHh8cgQBYQ6BUTQw=;
 b=FCKtcR2JK6n2qqKLbE0blDkEGImJ8PjvVgKcKo9u5CL/+y9wqNinZ+k9Y4LlvffWzA
 QhSN+NlTa4p8omkpdXhylG/3O3+SX8Lf5TtykD02xh1FOXw+HvFN9KNCpCsuczXT8LuQ
 ER3xacJsDRP/sosXmYL9ipwNdn/XPWheZM7j/e7v6VF0bMf1busGFsI9caa5YCzFtrQj
 QBG2gMjbExqcr3LUctU9T6dZq5Fb8OiqycKAsaULMaV8V/iJWMMy0VFjwDZexERCJQZ+
 LONRpZ7KvszyfvjySZE34c/HZShzoJTy0O9N+zcqsMRi4sGLHdWkr6DoNDzY1BRuo29Q
 +Mqg==
X-Gm-Message-State: APjAAAW34mkTZPHJXjPaNAfxQN53c7geY+ULHkOfLWmc4vF1WHDWXArk
 9nwSCHh2Wn/dv21lJwHj42PcJg==
X-Google-Smtp-Source: APXvYqxT81ciYzv3VRN7D5AK2cO0SiOZFOz6Hky5+PclfU1bKhrwyZ6y65WbJRRZN9RDot83f+FhcA==
X-Received: by 2002:adf:eb51:: with SMTP id u17mr12129653wrn.29.1582997488817; 
 Sat, 29 Feb 2020 09:31:28 -0800 (PST)
Received: from localhost (229.3.136.88.rev.sfr.net. [88.136.3.229])
 by smtp.gmail.com with ESMTPSA id 19sm8213197wma.3.2020.02.29.09.31.27
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 29 Feb 2020 09:31:28 -0800 (PST)
From: Kevin Hilman <khilman@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>, balbi@kernel.org
Subject: Re: [PATCH v4 3/3] arm64: dts: g12-common: add
 parkmode_disable_ss_quirk on DWC3 controller
In-Reply-To: <20200221091532.8142-4-narmstrong@baylibre.com>
References: <20200221091532.8142-1-narmstrong@baylibre.com>
 <20200221091532.8142-4-narmstrong@baylibre.com>
Date: Sat, 29 Feb 2020 18:31:27 +0100
Message-ID: <7hwo859u6o.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200229_093130_998439_63C33D4D 
X-CRM114-Status: UNSURE (   8.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Jianxin Pan <jianxin.pan@amlogic.com>,
 Neil Armstrong <narmstrong@baylibre.com>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Tim <elatllat@gmail.com>,
 Dongjin Kim <tobetter@gmail.com>, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Neil Armstrong <narmstrong@baylibre.com> writes:

> When high load on the DWC3 SuperSpeed port, the controller crashes with:
> [  221.141621] xhci-hcd xhci-hcd.0.auto: xHCI host not responding to stop endpoint command.
> [  221.157631] xhci-hcd xhci-hcd.0.auto: Host halt failed, -110
> [  221.157635] xhci-hcd xhci-hcd.0.auto: xHCI host controller not responding, assume dead
> [  221.159901] xhci-hcd xhci-hcd.0.auto: xHCI host not responding to stop endpoint command.
> [  221.159961] hub 2-1.1:1.0: hub_ext_port_status failed (err = -22)
> [  221.160076] xhci-hcd xhci-hcd.0.auto: HC died; cleaning up
> [  221.165946] usb 2-1.1-port1: cannot reset (err = -22)
>
> Setting the parkmode_disable_ss_quirk quirk fixes the issue.
>
> CC: Dongjin Kim <tobetter@gmail.com>
> Cc: Jianxin Pan <jianxin.pan@amlogic.com>
> Reported-by: Tim <elatllat@gmail.com>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>

With the bindings reviewed/acked, I'll queue this DT patch for v5.7.
The binding and driver patches will need to go via the USB tree.

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
