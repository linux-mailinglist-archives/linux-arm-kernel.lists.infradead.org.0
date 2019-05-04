Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88A0213AC6
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 May 2019 16:49:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=abzF0EBTzIns5PTun3Wj7voTl5afN3a0cSszA+bWemo=; b=LiqS1wpqh8x03XNDC3/7E1wrQ
	F9SRRdSnHkFHkwIe53M00uPurYWrtcQThO1Lz9KBwcSnDJhN4iHXWumRiIIRz/78xsC4dTRiqs0bM
	T2ni9lkE6TgPGgDE7DfiTa6/zneZGU5pppiQ/ICYY9BoY1da+jfgsaKeJsXYoHzE9gjTU/bS1OWoW
	WqWEkOFibJ3kuYv69PThZJRKYrbzJpXxSga8ffVeWzDBmkOoPkTMlLPEES4XT95rPswpBkUFnJkRo
	fS5njYljxd/jk+3qT/aDxmYbkZazxYPdT/Q4lxU6jGujGDDb1uAkcJe4KWt6Se9sMN5O19IA5fNMp
	cJl7yjI5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMvyY-0004oT-2A; Sat, 04 May 2019 14:49:18 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMvyQ-0004o7-Or
 for linux-arm-kernel@lists.infradead.org; Sat, 04 May 2019 14:49:12 +0000
Received: by mail-ed1-x541.google.com with SMTP id m4so9640529edd.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 04 May 2019 07:49:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nexus-software-ie.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=ouSmw5pcZk0fylsN9lA/T+ETjE9vahgI6G1mhrQBT9M=;
 b=mOZsoflw38rnRLrvjnox0hhMo4ZGXAl+CqtpjM7HoObzVeyfNxtl0Z1wVtA1yTfUih
 4bGfM1p/dUVY3YSqyDhxpQyDseB8k1Y2a0Z8r89MMVKA8xLl/EefS2D1ZhOB45M4P571
 kbM1S1K9sy2hJmId2cejMSr0LtJeZO/bxWCjzE5Rwpc0QvWRcM4PpwcyglFcN0N1uLvR
 b2U+GQcY/y3jYFNMIjq8DWXFnYjSsVQ00NQRJoXqj/v766Z4EtXv6aTPCf8AMgFILtw1
 bq3VJ3TRsCtfXFl7FYcJkLqHFdT16QKXz9N2VRkechQu+ZmXtKgP+czYEgTgcI62K9j7
 TFRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ouSmw5pcZk0fylsN9lA/T+ETjE9vahgI6G1mhrQBT9M=;
 b=mdTcHpdNojoMovFOmAu0E0z0H5k5cQIS3fa0j2l5hovX/6kTqNJg5NPglMJEiKPc61
 0oBrWQ1CfrQpIV09si4UB8fhG9ztlrWOf4yesHkcWbh+17V7JOHcX/n/c4k4UJnGwTy3
 wxBnBFaZkupon5zXoSMiJVKnk3LZTNmox0dP/F04L6b/XDd7Egq64tkOzQbJmMMgs2/M
 Y8sGGFCK3azHeWqyMApDvYJOwHU6Wh5jHJ3jOg2UiUZI5a5JXfOxeiY6yoJqwLMAsfzg
 NVoN9HIBEexyhTXLgtheZMZmiPaBP+0Mq7SnLF/Ody98uyePt8YTi8A7gx+uNiMEcOFW
 MSTg==
X-Gm-Message-State: APjAAAUDiYU/omPmOa3Dba9jJUitL8Yg0eI3uLEjdpVXeUdiBy8Y8iy+
 sPB4uosEeqs9RLLe8WhtgO4iSuOOLqM=
X-Google-Smtp-Source: APXvYqzmxhL8Uxmt7IjVnu/du26wC+RwDS29oK6F2rGdOg+rzp+CIUgoqggY/dDbiqq2CfH7yte9BQ==
X-Received: by 2002:a50:e79b:: with SMTP id b27mr15469587edn.281.1556981348930; 
 Sat, 04 May 2019 07:49:08 -0700 (PDT)
Received: from [192.168.192.38] ([80.111.179.123])
 by smtp.gmail.com with ESMTPSA id f44sm1426053eda.73.2019.05.04.07.49.06
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Sat, 04 May 2019 07:49:08 -0700 (PDT)
Subject: Re: [RESEND PATCH v6 0/5] Add i.MX8MM OCOTP support
To: Greg KH <gregkh@linuxfoundation.org>
References: <20190503165342.30139-1-pure.logic@nexus-software.ie>
 <20190504083939.GA1859@kroah.com>
From: Bryan O'Donoghue <pure.logic@nexus-software.ie>
Message-ID: <d67c692d-9e4f-9d08-12bc-ab3644fbaa8c@nexus-software.ie>
Date: Sat, 4 May 2019 15:49:05 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190504083939.GA1859@kroah.com>
Content-Language: en-US-large
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190504_074910_960589_838D7C67 
X-CRM114-Status: GOOD (  11.29  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devel@driverdev.osuosl.org, aisheng.dong@nxp.com, peng.fan@nxp.com,
 abel.vesa@nxp.com, anson.huang@nxp.com, srinivas.kandagatla@linaro.org,
 linux-imx@nxp.com, kernel@pengutronix.de, fabio.estevam@nxp.com,
 leonard.crestez@nxp.com, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04/05/2019 09:39, Greg KH wrote:
> On Fri, May 03, 2019 at 05:53:37PM +0100, Bryan O'Donoghue wrote:
>> V6 RESEND:
>> - Adding Greg to sender list. Greg looks like you are the right person to
>>    apply this.
> 
> $ ./scripts/get_maintainer.pl --file drivers/nvmem/imx-ocotp.c
> Srinivas Kandagatla <srinivas.kandagatla@linaro.org> (maintainer:NVMEM FRAMEWORK)
> Shawn Guo <shawnguo@kernel.org> (maintainer:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE)
> Sascha Hauer <s.hauer@pengutronix.de> (maintainer:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE)
> Pengutronix Kernel Team <kernel@pengutronix.de> (reviewer:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE)
> Fabio Estevam <festevam@gmail.com> (reviewer:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE)
> NXP Linux Team <linux-imx@nxp.com> (reviewer:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE)
> linux-arm-kernel@lists.infradead.org (moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE)
> linux-kernel@vger.kernel.org (open list)
> 
> 
> Why me???
> 

Looked like you were doing the merges to me.

commit 38e7b6efe997c4eb9a5a809dc2b2fe6c759b7c4b
Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

Ping, Srini, any chance you can merge this to your tree ?

---
bod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
