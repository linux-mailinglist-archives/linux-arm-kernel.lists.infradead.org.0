Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54EC8518B4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 18:30:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DsX1RsNXNfxAPQL7csgjPgofiZvTsPS+Sjfi1aHPcnE=; b=rvfQaagh//l7X5
	lh7HwkYG9aryGPEvTkhA+8qHGNXDJ7lFpsNZfg7YfF0v25eFhLC+Gq0iR3x9KcYJLwNZS1nWIkJLm
	A0uXqQwWJN+HZ0mnWchIdV5ujL6cWu8SlKYPn9pcjgRUyf+AbsngN6fqGFOk+oWzkugtSb3TMh4FL
	1K8ArRaNylhB9JVzjo5uQ6EOtY+TMBva6eQSk1jFW+R6LR3v6yyCGZ3Z4KIxIFmIikaQBl6MX+asj
	Rk7ReRqe/Sx9htbinMcQluC3QxpKYGMHaY7RJO56Dp3Q19EXPq0dKSo26TvOARdONjneK6O2Z47Vs
	D9h28ymiMXBiGpcsAKSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfRrk-0007UW-UB; Mon, 24 Jun 2019 16:30:48 +0000
Received: from mail-io1-xd2c.google.com ([2607:f8b0:4864:20::d2c])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfRra-0007Tj-Dz
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 16:30:39 +0000
Received: by mail-io1-xd2c.google.com with SMTP id u19so2434705ior.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 09:30:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Wulrto/HXlEP0Cxmn+aSmPqpiH4PSf21/9EuSwKYHd4=;
 b=Mn0cXMbFYMBl0SszZa7WI2WTD5T6951RjYiCrZy61CKf7Cm2DTD9UiLUXwJ0nx0zBY
 1ujuIMMLx77NflyHWBE1yHJcYVq4eHb2AFI56KEKa6Ixd5wfgzHDtkT0WQXMURcOSVAl
 O7Vkq2+51rP5ijLHFX1ZeCKQOT/dDYZntnHe5jyJwkHd7wAslrFu8N5j0IFVI/bIEuwq
 GEjmX3B6uGzH6yZ+b7nKqHGaETy/LXWhmuYf6hpvua3ECqdLlCvvyEH0+IU7TOktpF4M
 zyORQJmP8JKT7T81fNiN8Gbe0OZtEXP/NYrDuoZf7q8Lzo97joLIHKPPtTkz0yI5kWnm
 20kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Wulrto/HXlEP0Cxmn+aSmPqpiH4PSf21/9EuSwKYHd4=;
 b=YB6XTIjQs+iOk/lyUf8ASPCUBDuvgYWw/hsra3uDRv1kG+MIQNXS2WezBOIKH01zg3
 ZyaXGs390c4x5wK+b9zfYRS0dQohXt7aUlNJTI1fAStIWqtQDYj3PUIEY11UgiXznjKp
 sQxfDPhiu0ZxyvAAqmr3Hz4cwpEWZ54UdqAriWdToSADQvJ6ykxli5v2WKiSXaEM+VM1
 9OWHXlp+jWMWsgw1D3XLJ1R6ZB9B+YCWhsmbJ+OLuQc7dd5MYGpfiXY3OcVhuAUWNhbX
 JmTAt/pekypuwVZMIRgmlqRHch8VarZte0zcQw/jm/osat8e3wftouiW5pYeVK+UQm+m
 bR6g==
X-Gm-Message-State: APjAAAVeELJeYmQTEIkJdNnpgrpOhbLkmA3mhda47f04w2/899auq4iY
 5VLcKWLCeBcKvitk4UuJ4P5LzQ==
X-Google-Smtp-Source: APXvYqxdhhVgzPshhJyQgs10Hk+zfOquGsuDDw6awgazoiRekD4XFtjDBCvTdDE3FewywU+/yE2bnw==
X-Received: by 2002:a02:5185:: with SMTP id s127mr26639219jaa.44.1561393837131; 
 Mon, 24 Jun 2019 09:30:37 -0700 (PDT)
Received: from [172.22.22.26] (c-71-195-29-92.hsd1.mn.comcast.net.
 [71.195.29.92])
 by smtp.googlemail.com with ESMTPSA id p25sm13692350iol.48.2019.06.24.09.30.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 24 Jun 2019 09:30:36 -0700 (PDT)
Subject: WWAN Controller Framework (was IPA [PATCH v2 00/17])
From: Alex Elder <elder@linaro.org>
To: davem@davemloft.net, arnd@arndb.de, bjorn.andersson@linaro.org,
 ilias.apalodimas@linaro.org
References: <20190531035348.7194-1-elder@linaro.org>
Message-ID: <23ff4cce-1fee-98ab-3608-1fd09c2d97f1@linaro.org>
Date: Mon, 24 Jun 2019 11:30:35 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190531035348.7194-1-elder@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_093038_517385_9B0B9401 
X-CRM114-Status: GOOD (  12.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d2c listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, syadagir@codeaurora.org, ejcaruso@google.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, evgreen@chromium.org,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 subashab@codeaurora.org, linux-soc@vger.kernel.org, abhishek.esse@gmail.com,
 cpratapa@codeaurora.org, benchan@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

OK I want to try to organize a little more concisely some of the
discussion on this, because there is a very large amount of volume
to date and I think we need to try to narrow the focus back down
again.

I'm going to use a few terms here.  Some of these I really don't
like, but I want to be unambiguous *and* (at least for now) I want
to avoid the very overloaded term "device".

I have lots more to say, but let's start with a top-level picture,
to make sure we're all on the same page.

         WWAN Communication
         Channel (Physical)
                 |     ------------------------
------------     v     |           :+ Control |  \
|          |-----------|           :+ Data    |  |
|    AP    |           | WWAN unit :+ Voice   |   > Functions
|          |===========|           :+ GPS     |  |
------------     ^     |           :+ ...     |  /
                 |     -------------------------
          Multiplexed WWAN
           Communication
         Channel (Physical)

- The *AP* is the main CPU complex that's running Linux on one or
  more CPU cores.
- A *WWAN unit* is an entity that shares one or more physical
  *WWAN communication channels* with the AP.
- A *WWAN communication channel* is a bidirectional means of
  carrying data between the AP and WWAN unit.
- A WWAN communication channel carries data using a *WWAN protocol*.
- A WWAN unit implements one or more *WWAN functions*, such as
  5G data, LTE voice, GPS, and so on.
- A WWAN unit shall implement a *WWAN control function*, used to
  manage the use of other WWAN functions, as well as the WWAN unit
  itself.
- The AP communicates with a WWAN function using a WWAN protocol.
- A WWAN physical channel can be *multiplexed*, in which case it
  carries the data for one or more *WWAN logical channels*.
- A multiplexed WWAN communication channel uses a *WWAN wultiplexing
  protocol*, which is used to separate independent data streams
  carrying other WWAN protocols.
- A WWAN logical channel carries a bidirectional stream of WWAN
  protocol data between an entity on the AP and a WWAN function.

Does that adequately represent a very high-level picture of what
we're trying to manage?

And if I understand it right, the purpose of the generic framework
being discussed is to define a common mechanism for managing (i.e.,
discovering, creating, destroying, querying, configuring, enabling,
disabling, etc.) WWAN units and the functions they implement, along
with the communication and logical channels used to communicate with
them.

Comments?

					-Alex

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
