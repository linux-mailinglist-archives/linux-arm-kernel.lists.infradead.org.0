Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 276D810D5F3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 Nov 2019 14:02:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a4WLxMZ8l/5VZ6qEQ71gK/ffJFP7WNev5dbcnCP4X+4=; b=itgt+hKYf5nb/2
	HL7GbBLch0cUnWaI1868GNuE5WPcBfP15iAVg8idq1sJd3t6ppmCwY19kq4fdN1RygRn7GuVrGajM
	kR1RAgh+HQbYXrRWBU3hhwX/Ye1k746Vk4IxG25fF62zIzm+Htk9aI6f3+Q0B7Rmn4otuYOizHwO5
	qQRCIl142XxyfTt7LJeK4NnzbcDNwAnaVTgsBp2BSUAiSoQnmQcqubm4N2tAt5kyB7l8h4NiyRgT1
	8+6M+D+sCaxZ4IIMhm3nwugBOVtCSuuxzfunQ8rEMmHHRcS6XdajAiPRxwJU/DBEZf8726BRIX6nV
	1bkywsaW8gUHTLQkOUVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iafuO-0001jQ-Vc; Fri, 29 Nov 2019 13:02:05 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iafuF-0001iX-8b
 for linux-arm-kernel@lists.infradead.org; Fri, 29 Nov 2019 13:01:56 +0000
Received: by mail-qt1-x841.google.com with SMTP id i17so32408996qtq.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 29 Nov 2019 05:01:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Xn54XTvcNkal14NNHB7+Vzm9BZs6YXQQ3RAQ8lYr/oc=;
 b=An+4zXCFdte8eMvcqUEG3vfTxzYHLztNUyO+dIju42gILkNWJLODGcoxqgrQR7mqsl
 OfYl8RSMNw0xmz5Bgz11IFl+yVb5ur2ssG+rt2UWWkK3GXNcN5i0+6XzLBwaYkxROqrK
 hf05akothfHLjS+dc3IJ2nmpGRpB4rtw7hvhHxMw/wuCu0I+T8j69hAB5WrJ0UhCECxf
 RMt3xTOTWuVlOuPignDWsj0EBINdiInOto4yDYiZ/CqeuULQuwnS4TQ7ua9n3EYQ1Opt
 cF4tfnfdW0s1OqfNGbRi1bC6J2MgQcaHGhBWzpy10bkEgFRVncoZ+2BQibA0Id+qjfm/
 kEFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Xn54XTvcNkal14NNHB7+Vzm9BZs6YXQQ3RAQ8lYr/oc=;
 b=ITbVyAh1GBEqgv3ga/IgypqAf/zhfuD1WjrY6iBQNNgdzrw6Y2Ypzzpd3sbRGOeaLz
 DxlzlI7Y8KqzXXwykhSPbfeP5mStpmEEgf4fTCpri08lDby6Ik4fP1E4JUmAQj3qgkAp
 jAOqyBFF4uZckgvsnUSqi/fTnk3U3QfHwaotqPu841lXRZtW6UbmXBeFz8ii5QGo9Smc
 M6aYpwpOoCeachPpgAxYf74r4PpN954Wj82csCwex46cBKV/M7Ah9j3+tpz+tkh2y335
 TGlB5UauFRy6HFtLhf5TXa8Uwa615Ta/4b/JO0z+MG5Iy7vnSk8vN77VHzMHXTK1LdoN
 GqIQ==
X-Gm-Message-State: APjAAAUau5mS9LRUGPztiNEMo3DaIJFtHs3rYWIICE6JekrIzaQN+esq
 nSlLYkiDfX/0bSyxeNDoTUqv56vZF8b257nJl3FidA==
X-Google-Smtp-Source: APXvYqxnCMUzN7K5F96FwviGs9debEPUho46vDAcIfSuTnPxYu+XchM5mkJV2q7pXMOhaWj2Um8cNDKqRVhiHyGh8zE=
X-Received: by 2002:ac8:41c3:: with SMTP id o3mr35156316qtm.88.1575032508294; 
 Fri, 29 Nov 2019 05:01:48 -0800 (PST)
MIME-Version: 1.0
References: <20191119231912.12768-1-mike.leach@linaro.org>
 <20191119231912.12768-5-mike.leach@linaro.org>
 <ce6d3334-2baf-0528-33a1-0157a8ad0c57@arm.com>
In-Reply-To: <ce6d3334-2baf-0528-33a1-0157a8ad0c57@arm.com>
From: Mike Leach <mike.leach@linaro.org>
Date: Fri, 29 Nov 2019 13:01:37 +0000
Message-ID: <CAJ9a7Vj0fL4bkA+k-ip-NBwJ4nU3B+sCmPQZH1j9PdXnR66Veg@mail.gmail.com>
Subject: Re: [PATCH v5 04/14] coresight: cti: Add sysfs trigger / channel
 programming API
To: Suzuki Kuruppassery Poulose <suzuki.poulose@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_050155_316273_9EF9AD81 
X-CRM114-Status: GOOD (  13.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Coresight ML <coresight@lists.linaro.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Suzuki,


On Wed, 27 Nov 2019 at 18:40, Suzuki Kuruppassery Poulose
<suzuki.poulose@arm.com> wrote:
>
> On 19/11/2019 23:19, Mike Leach wrote:
> > Adds a user API to allow programming of CTI by trigger ID and
> > channel number. This will take the channel and trigger ID supplied
> > by the user and program the appropriate register values.
> >
> > Signed-off-by: Mike Leach <mike.leach@linaro.org>
> > ---
>
> > +
> > +static ssize_t chan_xtrigs_view_show(struct device *dev,
> > +                                  struct device_attribute *attr,
> > +                                  char *buf)
> > +{
> > +     struct cti_drvdata *drvdata = dev_get_drvdata(dev->parent);
> > +     struct cti_config *cfg = &drvdata->config;
> > +     int used = 0, reg_idx;
> > +     int buf_sz = PAGE_SIZE;
> > +     u32 chan_mask = BIT(cfg->xtrig_rchan_sel);
> > +
> > +     used += scnprintf(buf, buf_sz, "[%d] IN: ", cfg->xtrig_rchan_sel);
> > +     for (reg_idx = 0;
> > +          reg_idx < drvdata->config.nr_trig_max;
> > +          reg_idx++) {
> > +             if (chan_mask & cfg->ctiinen[reg_idx]) {
> > +                     used += scnprintf(buf + used, buf_sz - used, "%d ",
> > +                                       reg_idx);
> > +             }
> > +     }
>
> As a security measure, we must make sure that we have space left in the
> buffer. We could end up passing "negative" numbers for the size
> argument, in the worst case.
>

The return value from scnprintf() is always the _actual_ number of
characters added to the buffer, not as per snprintf() which returns
the number that could have been printed if there were sufficient
space.
Thus used can never exceed the buffer size.

Regards

Mike


> > +
> > +     used += scnprintf(buf + used, buf_sz - used, "OUT: ");
> > +     for (reg_idx = 0;
> > +          reg_idx < drvdata->config.nr_trig_max;
> > +          reg_idx++) {
> > +             if (chan_mask & cfg->ctiouten[reg_idx]) {
> > +                     used += scnprintf(buf + used, buf_sz - used, "%d ",
> > +                                       reg_idx);
> > +             }
> > +     }
> > +     used += scnprintf(buf + used, buf_sz - used, "\n");
> > +     return used;
> > +}
> > +static DEVICE_ATTR_RW(chan_xtrigs_view);
>
>
> The rest looks fine to me.
>
> Suzuki



-- 
Mike Leach
Principal Engineer, ARM Ltd.
Manchester Design Centre. UK

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
