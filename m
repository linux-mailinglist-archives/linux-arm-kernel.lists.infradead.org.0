Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81A879E636
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 12:56:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pT1cERw0wUZywp3AA+cSBACg+GabNDhO8KoEeJJ1GF0=; b=DLJOCysae9JVOO
	KczQ41OX5fdiZnH7n98DnKwY4UFPW9dqjtY13TyUS04/aPUFa7V6ToBSqf5BQjY++2llBZ16XTnz2
	SAYIAcdp580xY1EyIk3veNiz6xdJbGtkYBRQe6qLEWjfBkaj0p+c9Yn4V7y6tJMr0dmOIRIt70/Xq
	zM0n9Wjtt5BeijZNo5chOPqjhdOXEqTxQttaSe2p+sSqKJC0PSXuwoES+CtewBacdTI3u5TCAv+8i
	aozwdDre6S07YuSmVEISDatyepyrfTxfBCMWG7i4vjvpZfc5FBHoqmxZY4+xAI8BBKE70lx65BgoP
	jMGppRoAYrYCP0cAvQXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2Z97-0000Ya-A2; Tue, 27 Aug 2019 10:56:18 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2Z8S-0000YG-F3
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 10:55:37 +0000
Received: by mail-qt1-x844.google.com with SMTP id k13so20752351qtm.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 03:55:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xBBSaRfs9g20vYjbM6T4XZsAtcZKTiaViIXzxXMhEok=;
 b=EccDfglS7oeUty7JIpmxBdjnAlVVAiQJ6uHYJW4XKSK9eBlVBtsy/RRvpPSksELMQS
 pQhPDK8A45NTHQHBztsrJzKW1EQ2cdpJdB/bTLYMOIJ36R3a+JIX/l5g8ApT0BBi6DSZ
 kDUwXmwS/1BYpYPYpDobe+BQ1XllfEHfrtoIE8nOa6UwJ7xuuQx7vFfGrWW1pHOC0JzO
 Qf1dvFtvvufYbNML4SJCENX6YAktMdnN0+YSdiT5EF5FIe/G1G1g9IeWEEFgxV2r+8+f
 hO6wLKdfgFMp8mYAhn0BRF7kerHDTw7Q1b/MMLylCuvKlLvQgNnYoIYOK9AJbUirzZUA
 nKrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xBBSaRfs9g20vYjbM6T4XZsAtcZKTiaViIXzxXMhEok=;
 b=JcUKEX9OZCVt6ELYQcnn85NuPfkO/wKg2O2QNw/0NZhuaXzkn7FNI6kJTNbjc82faA
 wM1u74HDjev9V/l3PHdrjg5bLiLOwqK/WAinZ43XAiI2iiNXpCXKv6wEQuwVQIKL6Vmb
 2u6G+eYOYihOsKkTJ440ILOLTrmGNxkffPUbfWJyGh0Tvfvy6L9ZOmXi+GU2i/QS0cwz
 aK13yQnTiwe22yAmbdDKzcgcB7WmPOtW9T2+NqwcGrdZxZj80RP3+EdT632eHV1nXhzw
 7nMRC2JFrkJIF7YkWWbjGPbT8aWtvR7GqRCjZ6x+t6xFr6hA7TzAf2kh8DZTR7v3DgtF
 GWgA==
X-Gm-Message-State: APjAAAUOa5kupQTEFCOqWWiGDXzvpGxL/EJAkQfVMharah17qVR+Fy8Z
 K8MKxER/1fzmhvGvNDA6oIBRfvmIkt6GHA0HnQQOiQ==
X-Google-Smtp-Source: APXvYqy+ShF2vGWcpzN0/kSiwwARIB3GywOkPU223WrZEcvw8T5gACDtgzkzIiunHVeHtRnrdsBb4spmqIabuQTxtfg=
X-Received: by 2002:a0c:e711:: with SMTP id d17mr12583071qvn.174.1566903335249; 
 Tue, 27 Aug 2019 03:55:35 -0700 (PDT)
MIME-Version: 1.0
References: <20190819205720.24457-1-mike.leach@linaro.org>
 <20190819205720.24457-4-mike.leach@linaro.org>
 <20190826225949.GC24690@xps15>
In-Reply-To: <20190826225949.GC24690@xps15>
From: Mike Leach <mike.leach@linaro.org>
Date: Tue, 27 Aug 2019 11:55:24 +0100
Message-ID: <CAJ9a7VgAYwCONqwJHTb9QunN0Q4R3E82kxzpSJXV9kv2dpRnHw@mail.gmail.com>
Subject: Re: [PATCH 3/8] coresight: etm4x: Add missing API to set EL match on
 address filters
To: Mathieu Poirier <mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_035536_510074_7CADEC34 
X-CRM114-Status: GOOD (  22.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Coresight ML <coresight@lists.linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "Suzuki K. Poulose" <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mathieu,

On Mon, 26 Aug 2019 at 23:59, Mathieu Poirier
<mathieu.poirier@linaro.org> wrote:
>
> On Mon, Aug 19, 2019 at 09:57:15PM +0100, Mike Leach wrote:
> > TRCACATRn registers have match bits for secure and non-secure exception
> > levels which are not accessible by the sysfs API.
> > This adds a new sysfs parameter to enable this - addr_exlevel_s_ns.
> >
> > Signed-off-by: Mike Leach <mike.leach@linaro.org>
> > ---
> >  .../coresight/coresight-etm4x-sysfs.c         | 39 +++++++++++++++++++
> >  1 file changed, 39 insertions(+)
> >
> > diff --git a/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c b/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
> > index fa1d6a938f6c..7eab5d7d0b62 100644
> > --- a/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
> > +++ b/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
> > @@ -1233,6 +1233,44 @@ static ssize_t addr_context_store(struct device *dev,
> >  }
> >  static DEVICE_ATTR_RW(addr_context);
> >
> > +static ssize_t addr_exlevel_s_ns_show(struct device *dev,
> > +                                   struct device_attribute *attr,
> > +                                   char *buf)
> > +{
> > +     u8 idx;
> > +     unsigned long val;
> > +     struct etmv4_drvdata *drvdata = dev_get_drvdata(dev->parent);
> > +     struct etmv4_config *config = &drvdata->config;
> > +
> > +     spin_lock(&drvdata->spinlock);
> > +     idx = config->addr_idx;
> > +     val = BMVAL(config->addr_acc[idx], 14, 8);
> > +     spin_unlock(&drvdata->spinlock);
> > +     return scnprintf(buf, PAGE_SIZE, "%#lx\n", val);
> > +}
> > +
> > +static ssize_t addr_exlevel_s_ns_store(struct device *dev,
> > +                                    struct device_attribute *attr,
> > +                                    const char *buf, size_t size)
> > +{
> > +     u8 idx;
> > +     unsigned long val;
> > +     struct etmv4_drvdata *drvdata = dev_get_drvdata(dev->parent);
> > +     struct etmv4_config *config = &drvdata->config;
> > +
> > +     if (kstrtoul(buf, 16, &val))
> > +             return -EINVAL;
> > +
> > +     spin_lock(&drvdata->spinlock);
> > +     idx = config->addr_idx;
> > +     /* clear Exlevel_ns & Exlevel_s bits[14:12, 11:8] */
> > +     config->addr_acc[idx] &= ~(GENMASK(14, 8));
> > +     config->addr_acc[idx] |= (val << 8);
> > +     spin_unlock(&drvdata->spinlock);
> > +     return size;
> > +}
> > +static DEVICE_ATTR_RW(addr_exlevel_s_ns);
> > +
> >  static ssize_t seq_idx_show(struct device *dev,
> >                           struct device_attribute *attr,
> >                           char *buf)
> > @@ -2038,6 +2076,7 @@ static struct attribute *coresight_etmv4_attrs[] = {
> >       &dev_attr_addr_stop.attr,
> >       &dev_attr_addr_ctxtype.attr,
> >       &dev_attr_addr_context.attr,
> > +     &dev_attr_addr_exlevel_s_ns.attr,
> >       &dev_attr_seq_idx.attr,
> >       &dev_attr_seq_state.attr,
> >       &dev_attr_seq_event.attr,
>
> I'm ok with this patch but the new entry needs to be documented in [1].

It is in a later patch.

>   But
> before moving forward with that I'm wondering if this is the way to go.  Would
> it be better to consolidate type, ctxtype, context and exlevel_s_ns in a single
> entry, say addr_acc_type?  We'd shed a fair amount of code and make it more
> simple for users to configure.
>

It will mean the user has less writes to do - but is it really simpler
to understand?

At present each feature takes the input value and interprets / shifts
it to set the relevant bits in the address comparator control
registers (context type being a string input rather than bit values).

The alternative is to require the user to understand the bit values -
which they may well do if they are referring to the ETM docs to
program in this detail, and provide a correct input value for their
requirements.

My addition adds to the API, rather than changes it, but if you prefer
we could go with an update to a single feature to control this value
in the comparator control registers.

Mike

>
> [1]. Documentation/ABI/testing/sysfs-bus-coresight-devices-etm4x
>
> > --
> > 2.17.1
> >



-- 
Mike Leach
Principal Engineer, ARM Ltd.
Manchester Design Centre. UK

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
