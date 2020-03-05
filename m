Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76E5C17A85B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 15:59:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1JO7ue99u0ZCK6MPHMiRFXY8x8Eas0+vWZQ8SEgCgT8=; b=sGNMA0FucheiC5
	xAi/JAEWwpvBIvgslqXrQJ1BlpaAdfMrMM5b8Wv4+yf37qEXNJqZeWYHAN0TqSG/kh917i+JtKzhU
	JlA5La1X6n3HhCWD5pWmBu7q5Wa99ItzlYX4skPKtn7IjBwL6MjDqWvUc+HrurrzQE3dgted0HK0l
	CB1i9yf/cCcmKpgvUxiEXBYJrTDE3PMi2wDkpgh9IjlorjvcEVvrdV2Qmirr9t+sOLCZML1JeM3a6
	mK+FPWH+0EeqgWoKYFXFclyQcwyD5Q3Nv3otHVX4IcpImy9wpNNya4TcipykmsDYJBH4oFc1Lf0Lw
	ypWFg14jiv6Bxw4YT12g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9rxp-0002NX-H0; Thu, 05 Mar 2020 14:59:05 +0000
Received: from mail-il1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9rxh-0002My-SC
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Mar 2020 14:58:59 +0000
Received: by mail-il1-x141.google.com with SMTP id x7so5252086ilq.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Mar 2020 06:58:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=4bV4e2J0Fj77NrhTqn4U15G8AA1APxJOoLr6qnKhOMc=;
 b=esoOeJ8vk39jzQbYXfJq1SFqiVch6RalQvjHVWANNM+olC7WkFv8UUMuQ4k+3AeujU
 ldsf+SXtvo2g8fplfXNBTqV+HxFYw6ytavS9Yi7rvCgn997XMPTs3uiEzZjmgelDYMCA
 xNyZd/mKHxBuLL6JVZzGh0lwA3OO4C0t8vi2Pt+RiDN9vgxbT+NiW1IRO5iE9ITrZ2w3
 UP+RFRkwFWKqt51wrEKEBUiHwdgDyL+BIAkI+DrfdBZ+kU6HSCM1xHd8nnrR+rguCUE5
 lW+cVrCGK3+K8UgQ9iuIpsdovS8ZDK3sNetDv3lVs7x9KFBjvTXoLDXZhTOxKkb3wbQR
 PWwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=4bV4e2J0Fj77NrhTqn4U15G8AA1APxJOoLr6qnKhOMc=;
 b=PJqDzllc0TBKgwKAbEaVxGkujc9oYRCcckq7F7K54m6kgczo6qrZZR1sOX86ZhGb0l
 5WHGKQEvzmcBos9P7Z8B7cTSsfO+k41WPjs3fFoEdco1/vS+YEj72QlV3XLTQXIfmTq2
 oZRlHzntU9xQjcYHxEMWm9SLk7tFdWoipzsu+GnrxPDS60eDGzed9o0cBJAZsqrrH/4U
 4XuXlxu9n982bCrUHfXnof7JCiUJEjpdJaWFynDitbDerwYfQScT3HSn8qXYmeVoy2VK
 1Os+KirP6zIS5H3AvkWQWQBwAIxPlo8EwroN22bbHsYpWH+A1V0JfoGL4gX6ZHBqXRN6
 rD2w==
X-Gm-Message-State: ANhLgQ2zsR37i0wXZYSktjFToyHLa9+7IXVBMHf42jsg4X0VxA5e891I
 3jjob8JJ2hp/FtliqfLTb8R4Rg==
X-Google-Smtp-Source: ADFU+vtpeY9CxlaepFzd4eHxFzmg0UDavlbEE426APDD8aZtC+Rwtl+OAoe0AHeKrotvehazhLMiPw==
X-Received: by 2002:a92:981b:: with SMTP id l27mr8649435ili.118.1583420334176; 
 Thu, 05 Mar 2020 06:58:54 -0800 (PST)
Received: from [172.22.22.26] (c-73-185-129-58.hsd1.mn.comcast.net.
 [73.185.129.58])
 by smtp.googlemail.com with ESMTPSA id p78sm6860932ilk.76.2020.03.05.06.58.52
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 05 Mar 2020 06:58:53 -0800 (PST)
Subject: Re: [PATCH 00/17] net: introduce Qualcomm IPA driver (UPDATED)
To: David Miller <davem@davemloft.net>
References: <20200228224204.17746-1-elder@linaro.org>
 <20200304.141547.1905642444413562833.davem@davemloft.net>
From: Alex Elder <elder@linaro.org>
Message-ID: <d422e872-ed97-76a0-e8d8-457e8932f4ff@linaro.org>
Date: Thu, 5 Mar 2020 08:58:04 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200304.141547.1905642444413562833.davem@davemloft.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_065857_914351_CFA4294B 
X-CRM114-Status: GOOD (  12.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
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
Cc: mark.rutland@arm.com, ohad@wizery.com, syadagir@codeaurora.org,
 ejcaruso@google.com, arnd@arndb.de, devicetree@vger.kernel.org,
 dcbw@redhat.com, netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, bjorn.andersson@linaro.org, agross@kernel.org,
 evgreen@google.com, linux-arm-kernel@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, subashab@codeaurora.org,
 johannes@sipsolutions.net, linux-soc@vger.kernel.org, sidgup@codeaurora.org,
 cpratapa@codeaurora.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 3/4/20 4:15 PM, David Miller wrote:
> From: Alex Elder <elder@linaro.org>
> Date: Fri, 28 Feb 2020 16:41:47 -0600
> 
>> This series presents the driver for the Qualcomm IP Accelerator (IPA).
> 
> This doesn't apply cleanly to the net-next tree if that's where you want
> this applied, can you respin?

Yes I will do that today.  Thanks.	-Alex

> 
> Thanks.
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
