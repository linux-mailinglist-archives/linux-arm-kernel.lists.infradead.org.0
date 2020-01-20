Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03C451423D4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 07:50:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cOlh4DMEUwq1diBxcoR4O6bkqHghe5SbtztwktCNwGs=; b=fuxZwQ1F2k26Zr
	IKjaMws95R22nrky95PJkxLV3/fKbT33Df+gN/9ek9Xg4+0PBWjtKXcrMnjCfSn7kJirajlYzYoI2
	1lhDHxojiePpGS0mcKzu6kur0TcHElxmhld4EbDHwGkTRGvT71qIcqhtJy7FUdybjrMlj8EtuZqw+
	1P0wdiL04FEj31dBFjSECn78Z8r/ijvmxl9bX4bJEdKstv2YYow83jCbJtT6cvNi5O+xoW5ZFW3lg
	Yb0RjlGdfKMZ7QoKdolYKMIEQangPtUQ2ZhCxZKJrPYTpqBxlNVPghJ3geHfwZP5y8FkIWtRQjnYx
	i+/qsmn/rLGN1LvloTpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itQtd-0001XX-Fo; Mon, 20 Jan 2020 06:50:49 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itQtR-0001WV-GS
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 06:50:41 +0000
Received: by mail-pj1-x1041.google.com with SMTP id d15so6315164pjw.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 19 Jan 2020 22:50:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=19G2hJ0Y5Y+ICc9F9ypBwJspYPvqMAzXv9gjpu0d/Sc=;
 b=Fx2UTjU+CwLoqzW58fI13zN3UMdwrn+NM8Fj244+1by5FD9Yh9NI3xHonpZ4iIQtTT
 8ysJDVphxwpTZCjQoIj8Bpx8j/hnPl7elDBV6FhzG6xOuB8oXF8GxNoszpkDYiUoU3pe
 Z0VfRUlpi60j246MjaoIO3wkWcppjMAJwmXSgIZQqZ27lBXpx9AN9PGU1tVB8ByBMbjN
 Q/9MQgURiZt3Au/0hzpD46uaUuntuUPsPilSqybRs8epxL7FgRiIzAZiT0J5rO9Ilm7K
 Oor0DWcrU95Zg2RoKBbSuvk3vWNvToIclrcdJXGMCWHv9oE6A/btmDd12xjWKek4/Tf2
 NP0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=19G2hJ0Y5Y+ICc9F9ypBwJspYPvqMAzXv9gjpu0d/Sc=;
 b=gebM6Pq/6PYcV6KNpALMlKdkcISUDIGQd9gDVHWrIER7XTWlKZzKlTtFsuaCe0gLLA
 m1w+HkubOUo15vYPbyPAl9IwAf355JHEh/6yNfZwtASnHRkLkUMDybkJ+z02ojBOpgat
 QniVaxhaMFgdWSbTbj0x3Kx012GhqklAFG/cCABtLcTHnlHG0DPE+ghvG+qFNxOKENs2
 qRUZY7u7LSKGYhZI7IP8dIAOltOOj2uRKadQBsjQSbq/cpD3pR7kCGXs+emzUqpTi6Am
 vRfCzF5w2Vq8eDE5aDg97brnu9uCEV16KNLLnFcz3XJRBSp8Ud4zOEur0Fh1jJp6z6iG
 l/OQ==
X-Gm-Message-State: APjAAAXOnmgQsrOZNqWRXOyVUkCdK75HSeudCSsPk+brAnkPNs73ZSD1
 vrOQ0xj19bIhc0pSDzWCAsWuF3SmP+k=
X-Google-Smtp-Source: APXvYqw+UGLalaEbXYz82H3Vf+GtPUDO8dZIGgFGrasGSS6G+eK+XcLZIajq4hcjdpDOn5PhI/Q1Aw==
X-Received: by 2002:a17:902:ab91:: with SMTP id
 f17mr13549978plr.172.1579503036952; 
 Sun, 19 Jan 2020 22:50:36 -0800 (PST)
Received: from localhost ([43.224.245.179])
 by smtp.gmail.com with ESMTPSA id q21sm36278849pff.105.2020.01.19.22.50.36
 (version=TLS1_2 cipher=AES128-SHA bits=128/128);
 Sun, 19 Jan 2020 22:50:36 -0800 (PST)
Date: Mon, 20 Jan 2020 14:50:34 +0800
From: chenqiwu <qiwuchen55@gmail.com>
To: Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [PATCH v3] cpufreq: brcmstb-avs: fix imbalance of cpufreq policy
 refcount
Message-ID: <20200120065034.GA5874@cqw-OptiPlex-7050>
References: <1579417750-21984-1-git-send-email-qiwuchen55@gmail.com>
 <20200120053250.igkwofqfzvmqb3c3@vireshk-i7>
 <20200120055822.GB5185@cqw-OptiPlex-7050>
 <20200120060134.izotrbzjvzk327zx@vireshk-i7>
 <20200120061356.GA5605@cqw-OptiPlex-7050>
 <20200120062126.nmxaqhcpqcojuihr@vireshk-i7>
 <20200120062756.GA5802@cqw-OptiPlex-7050>
 <20200120063004.zzhep35vfl3urndd@vireshk-i7>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200120063004.zzhep35vfl3urndd@vireshk-i7>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_225037_552108_A4B67020 
X-CRM114-Status: GOOD (  29.24  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [qiwuchen55[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [qiwuchen55[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: f.fainelli@gmail.com, linux-pm@vger.kernel.org, rjw@rjwysocki.net,
 linux-kernel@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 mmayer@broadcom.com, chenqiwu <chenqiwu@xiaomi.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jan 20, 2020 at 12:00:04PM +0530, Viresh Kumar wrote:
> On 20-01-20, 14:27, chenqiwu wrote:
> > On Mon, Jan 20, 2020 at 11:51:26AM +0530, Viresh Kumar wrote:
> > > On 20-01-20, 14:13, chenqiwu wrote:
> > > > On Mon, Jan 20, 2020 at 11:31:34AM +0530, Viresh Kumar wrote:
> > > > > On 20-01-20, 13:58, chenqiwu wrote:
> > > > > > On Mon, Jan 20, 2020 at 11:02:50AM +0530, Viresh Kumar wrote:
> > > > > > > On 19-01-20, 15:09, qiwuchen55@gmail.com wrote:
> > > > > > > > From: chenqiwu <chenqiwu@xiaomi.com>
> > > > > > > > 
> > > > > > > > brcm_avs_cpufreq_get() calls cpufreq_cpu_get() to get the cpufreq policy,
> > > > > > > > meanwhile, it also increments the kobject reference count to mark it busy.
> > > > > > > > However, a corresponding call of cpufreq_cpu_put() is ignored to decrement
> > > > > > > > the kobject reference count back, which may lead to a potential stuck risk
> > > > > > > > that the cpuhp thread deadly waits for dropping of kobject refcount when
> > > > > > > > cpufreq policy free.
> > > > > > > > 
> > > > > > > > For fixing this bug, cpufreq_get_policy() is referenced to do a proper
> > > > > > > > cpufreq_cpu_get()/cpufreq_cpu_put() and fill a policy copy for the user.
> > > > > > > > If the policy return NULL, we just return 0 to hit the code path of
> > > > > > > > cpufreq_driver->get.
> > > > > > > > 
> > > > > > > > Signed-off-by: chenqiwu <chenqiwu@xiaomi.com>
> > > > > > > > ---
> > > > > > > >  drivers/cpufreq/brcmstb-avs-cpufreq.c | 12 ++++++++++--
> > > > > > > >  1 file changed, 10 insertions(+), 2 deletions(-)
> > > > > > > > 
> > > > > > > > diff --git a/drivers/cpufreq/brcmstb-avs-cpufreq.c b/drivers/cpufreq/brcmstb-avs-cpufreq.c
> > > > > > > > index 77b0e5d..ee0d404 100644
> > > > > > > > --- a/drivers/cpufreq/brcmstb-avs-cpufreq.c
> > > > > > > > +++ b/drivers/cpufreq/brcmstb-avs-cpufreq.c
> > > > > > > > @@ -452,8 +452,16 @@ static bool brcm_avs_is_firmware_loaded(struct private_data *priv)
> > > > > > > >  
> > > > > > > >  static unsigned int brcm_avs_cpufreq_get(unsigned int cpu)
> > > > > > > >  {
> > > > > > > > -	struct cpufreq_policy *policy = cpufreq_cpu_get(cpu);
> > > > > > > 
> > > > > > > Why can't we just add a corresponding cpufreq_cpu_put() instead of all this ?
> > > > > > > 
> > > > > > 
> > > > > > cpufreq_get_policy() does a proper cpufreq_cpu_get()/cpufreq_cpu_put(),
> > > > > > meanwhile fills a policy copy for the user. It equals to using
> > > > > > cpufreq_cpu_get() and a corresponding cpufreq_cpu_put() around access
> > > > > > to the policy pointer. I think both methods are fine here.
> > > > > > What do you think?
> > > > > 
> > > > > cpufreq_get_policy() does an extra memcpy as well, which isn't required at all
> > > > > in your case.
> > > > > 
> > > > > -- 
> > > > > viresh
> > > > 
> > > > Huha..Do you worry about the race conditon with cpufreq policy free path?
> > > 
> > > No. I just worry about an unnecessary memcpy, nothing else.
> > >
> > Is there any question about this extra memcpy?
> 
> What do you mean by that?
> 
> The whole point I am trying to make is that for your specific case, doing an
> explicit cpufreq_cpu_get() and cpufreq_cpu_put() is far more efficient than
> calling cpufreq_get_policy() which has a different purpose and usecase.
>

For efficiency, I agree your idea.
So we have change as follows:
diff --git a/drivers/cpufreq/brcmstb-avs-cpufreq.c b/drivers/cpufreq/brcmstb-avs-cpufreq.c
index 77b0e5d..b2ddde3 100644
--- a/drivers/cpufreq/brcmstb-avs-cpufreq.c
+++ b/drivers/cpufreq/brcmstb-avs-cpufreq.c
@@ -455,6 +455,11 @@ static unsigned int brcm_avs_cpufreq_get(unsigned int cpu)
        struct cpufreq_policy *policy = cpufreq_cpu_get(cpu);
        struct private_data *priv = policy->driver_data;

+       if (!policy)
+               return 0;
+
+       cpufreq_cpu_put(policy);
+
        return brcm_avs_get_frequency(priv->base);
 }

Qiwu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
