Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46A3723FC7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 20:00:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pfJQbMPV6CiQS6qj0O0+lMzWGcknVqdyvxPTUUoJJMQ=; b=KPncnRo2mQPoHy
	y/8mSvcZcQ1waa/iNwTpgaNZ75dnC24ChkqyTxDZBWGb1/SUON0vst4ABX9EdCa4GHScB/jiyCAaq
	a5l6+NtVDeBIYbtUH/XajeiRCr+PQUsnR15g9cmbYo9w7n58LLjceMnSiKscchFMwuq1/+4VBurlM
	1YglUtJwgQCLw0fV6QtXhDG4XT/E1COyTlrLEezwm/bNhOPnWkjBsziu3dxF11U2oYO5RYWWzFocK
	TWHTBu5KCWgYz21FpaWhRbaZDWIgVJJeafJjhgucYViNXOfuavYvMIKzG0UJNxCQHsboUwLucwERj
	fLz/qEYoACgOjQIzB24g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSmaM-0003Jd-6K; Mon, 20 May 2019 18:00:30 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSmaF-0003JJ-BR
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 18:00:24 +0000
Received: by mail-io1-xd42.google.com with SMTP id z4so11792129iol.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 11:00:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=BJqbM9dQi2sqRGEpi6wyz+rXnQolu1I+N0gg6WNhl7o=;
 b=dAD3+9VLDk0sn9pVjO2MaAXRmjsUoAShvtNS7ntM7G/LWtzgWzJVhA5VOgNwNG2Nhq
 AsN2XW01kQtruxRTT6HdgdezRWtKPxgYOuQg0mQp9sBmNeGUUxfaDLERaXTqWz+Cm55x
 35nFfo6usS3ws+QKF+kjhDxyDQB4f31m5vhPj7aQ3pqn0qSWXT8/weULF+8WYoAswlDK
 yc3w2lPetkyUTT6V7dhUQJWgg8/InVS29drJfkIZd/7ScsP/s0UVzEH5ELEETuNTakdH
 KKm1ifZly4qDlmYpRvXEGJxsZOb0HoN2Eqqe4Gl1w8uPRojMHmiN/USH+HLRgNfEzG6E
 iPZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=BJqbM9dQi2sqRGEpi6wyz+rXnQolu1I+N0gg6WNhl7o=;
 b=HTAdbIHP+iw+niK4Wc1af1ee5j1/MkPtaJ3wlV7BC5KflPMuKquBjeHPd8oo3eSdG/
 wenA8z14cm5XlcSZXKHlQbkLTMH0SOWAOcVg8JGhZB4PtOfrMwhNPuz+/t9jaIidvcDy
 bG64z5HfWYC8IT+BbWlugwPgsAKzvkDUE5zHPMFi+ESvT3NKucosrcvi9iXS64g4XKMS
 LNXwkEqHXz/V1cDvwUpSdPD6pDWybkTuuLMyvO/ev8dMfgswmWv/tBY2CqRGLg1VXyQT
 ezH/5xeK8GuV3XNS8O7Q/2eOmNDIr1Jkvl7HvfNMERBg3C5lMJ3cbD+2DHtPEnoackzH
 GAWg==
X-Gm-Message-State: APjAAAVWcV59FLOr4KCLSGZ9cXcHJcvVS7j3AN1OgL7Xx9MsslKj0xM+
 LhYvvg8555F2J3XfgZcyasPYRw==
X-Google-Smtp-Source: APXvYqxv80ApBPxqXJbSbRPtqnglRzwSJUkWb3i2BuzzOLG+7reCwHLixDN526o3wcXtQBdGkChSRg==
X-Received: by 2002:a5d:914e:: with SMTP id y14mr41508808ioq.77.1558375222065; 
 Mon, 20 May 2019 11:00:22 -0700 (PDT)
Received: from [172.22.22.26] (c-71-195-29-92.hsd1.mn.comcast.net.
 [71.195.29.92])
 by smtp.googlemail.com with ESMTPSA id i203sm5736544ioa.15.2019.05.20.11.00.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 11:00:21 -0700 (PDT)
Subject: Re: [PATCH 0/8] net: introduce "include/linux/if_rmnet.h"
From: Alex Elder <elder@linaro.org>
To: arnd@arndb.de, subashab@codeaurora.org, david.brown@linaro.org,
 agross@kernel.org, davem@davemloft.net
References: <20190520135354.18628-1-elder@linaro.org>
Message-ID: <95af58ff-0005-86ca-989f-3b61a2cc21ba@linaro.org>
Date: Mon, 20 May 2019 13:00:19 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190520135354.18628-1-elder@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_110023_404057_BFB34742 
X-CRM114-Status: GOOD (  11.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: syadagir@codeaurora.org, ejcaruso@google.com, netdev@vger.kernel.org,
 ilias.apalodimas@linaro.org, linux-kernel@vger.kernel.org,
 evgreen@chromium.org, bjorn.andersson@linaro.org,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 cpratapa@codeaurora.org, benchan@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/20/19 8:53 AM, Alex Elder wrote:
> The main objective of this series was originally to define a single
> public header file containing a few structure definitions that are
> currently defined privately for the Qualcomm "rmnet" driver.  In
> review, Arnd Bergmann said that before making them public, the
> structures should avoid using C bit-fields in their definitions.

. . .

Bjorn, thank you very much for your quick reviews.	-Alex

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
