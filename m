Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A2F7135430
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 09:18:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uhGBWooH2kQW4+4FB6MI62DthP5jvncTigAYXC6+aaE=; b=QoEwOd4XJbxtvd
	wk2f4yGhJvX50tGPlOr+cjHhMEzSmF0h0QxzzggDqda0T7YqZTZgqrgV8aoSGSEZByE6UyajHU5tT
	Eh79XCxYjYIgtzmjhZNA//ZnsU4SjyIKInBjM37mZKyoIaITeJdo3BgAVd2+aNe4Ebyq2Uiq9ylWu
	ofJTpX0XHn7hINMtnERajZ/bFS8Sr2qDHnur8zNffDTfLj+M0bMkRNyOG7Vh9tgujlQJwlLLP0yaw
	gpdq9+Xgh2dJ38Gs1pFBYtaWR2Qb/ao2GXSfvbQSjpz8FcjEK6NuYid/zVWjnQSNoesdUPukYjFJh
	xnLFn6XE5p4gZxtbaXZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipT1i-0005ZS-W0; Thu, 09 Jan 2020 08:18:46 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipT1Z-0005YC-0t
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 08:18:38 +0000
Received: from mail-qk1-f180.google.com ([209.85.222.180]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MgRYd-1jKz183hbL-00hwjn for <linux-arm-kernel@lists.infradead.org>; Thu,
 09 Jan 2020 09:18:30 +0100
Received: by mail-qk1-f180.google.com with SMTP id t129so5182766qke.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 00:18:29 -0800 (PST)
X-Gm-Message-State: APjAAAXDls4+QtU0ovEf6HXb6vtw4OcNHujt8EVogNiQfpRcUhzGeptw
 MD9U/WPKDMp+l4lG5uUApq9v+JDpX8KBJSRH0VI=
X-Google-Smtp-Source: APXvYqwrLUeYgK37ZgRpSE5ftnQA149aKKqaEoy2+dBDh0yYplmE9JgRJrB0Wlay2W/JZAZoEkEavviGz+ak9iB2ijQ=
X-Received: by 2002:a37:84a:: with SMTP id 71mr8135294qki.138.1578557908396;
 Thu, 09 Jan 2020 00:18:28 -0800 (PST)
MIME-Version: 1.0
References: <5c545c2866ba075ddb44907940a1dae1d823b8a1.1575019719.git.viresh.kumar@linaro.org>
In-Reply-To: <5c545c2866ba075ddb44907940a1dae1d823b8a1.1575019719.git.viresh.kumar@linaro.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 9 Jan 2020 09:18:12 +0100
X-Gmail-Original-Message-ID: <CAK8P3a3=q2zX9xQo7eZKp7e70rAeNB8VoSjg2aE06QJuSw8y3Q@mail.gmail.com>
Message-ID: <CAK8P3a3=q2zX9xQo7eZKp7e70rAeNB8VoSjg2aE06QJuSw8y3Q@mail.gmail.com>
Subject: Re: [PATCH] firmware: arm_scmi: Make scmi core independent of
 transport type
To: Viresh Kumar <viresh.kumar@linaro.org>
X-Provags-ID: V03:K1:h5k4q4mowramQHxiZz455MqoY2YB4DBcxBbaR25Kp3FW+Baqu7I
 +WTe39SqGsdiN/x0PiMvm87b1QIxRu4BUnDWmVfe1MY9TFrfHYbWR0Vc67hh1QZjTxSAGPy
 lAOniO6bdnEvLy76oRHpx1YRtKeYJ347oA8PhtcdHCQvl7BZNbnopSbje3ItzyG/XoJYnY4
 NzvlTprkA4mD8EJR8fXgA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:l1Xkizmgbvk=:rZr6/8qRzmfTna/DB42mMU
 EWJUXtYI8e3fOBazlvphx+VdMugdZEVM/EWgeMNpUqupA/UyiwTVvPOb9EVEV9BCQzaeswTRy
 duQNMC5pu0Ab4sn41HInPVrS/hOqnv3T1HryjdL5CYQj6D1XE3uD4TmIghRISAIH2uVKU3f1R
 mDVJnIUwxnbXnSBOAdzsT/z9LxPzmAPe6WmSbr8ZX8lfB7UtcR8nFYI5fe1CuoK0L7DrwX2f7
 ooi27iQG1kKuOCL03Fq/jpygvT8K/qmvKizW+k3sDsy/eANuetPmpOQmDZOtZU6KMo/RjhOK6
 ZiU9pr3UKpH2C7TKrVjNv9RTpWC3wvx/mztCH5/j5JG34PzdFqFWGnJJsrjQzhI58QQRukEWX
 w3yP0cSwQkyi6/im2PakhTIr5bLpzY+f7BUX/h08weD9cJ02SJmCDWolBAD+iVtOVBHUCqiHm
 GaYaFPzDjbr0qoQvrq6dhTZj9hnerpMUmungHrD7shsZgfZoUKLMzTUCwSKwplMPuLOGiHj+J
 vN6/OgmCKtAJvidUVn6A3JKSyiju8vlVchposu7eXpGwAwrFOYDU5PgKW/T6TyGzvI6ix7Mgg
 Qg/4VbKpVikqwgFc8FSoO+28ccqejpt3LvAI+AF1W+U2tdcJhMVg1UGYSQoB1DJfoC2yGuQuT
 30wMvaYEswII1135Jr+fTC/U6OkL7drGb/LStRd4APzQc3jd7YBHvc0VMUsRHF0ZNMADCOVrW
 Pl5+4dw5QdEQT93YNKl5r9ZCIwu2JMsGFXPc15dM1kWGbqkPrkpqDCkIOXDnszo3+GGTAVlSt
 Cg9d9grmNM4CYF4IJolQ3rweb+k5RBj5od6pFf8FD+eDQFsb3+qcBjgYfopNbX8cT36LgcwGV
 8m5g6qCTgqjf3VeAQupw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_001837_365045_DFFF1A02 
X-CRM114-Status: GOOD (  20.42  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Jassi Brar <jassisinghbrar@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Sudeep Holla <sudeep.holla@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 29, 2019 at 10:32 AM Viresh Kumar <viresh.kumar@linaro.org> wrote:
>
> The SCMI specification is fairly independent of the transport protocol,
> which can be a simple mailbox (already implemented) or anything else.
> The current Linux implementation however is very much dependent of the
> mailbox transport layer.
>
> This patch makes the SCMI core code (driver.c) independent of the
> mailbox transport layer and moves all mailbox related code to a new
> file: mailbox.c.
>
> We can now implement more transport protocols to transport SCMI
> messages.
>
> The transport protocols just need to provide struct scmi_transport_ops,
> with its version of the callbacks to enable exchange of SCMI messages.
>
> Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>

Conceptually I think this is fine, but as others have said, it would be
better to have another transport implementation posted along with this
to see if the interfaces actually work out.

> +/**
> + * struct scmi_chan_info - Structure representing a SCMI channel information
> + *
> + * @payload: Transmit/Receive payload area
> + * @dev: Reference to device in the SCMI hierarchy corresponding to this
> + *      channel
> + * @handle: Pointer to SCMI entity handle
> + * @transport_info: Transport layer related information
> + */
> +struct scmi_chan_info {
> +       void __iomem *payload;
> +       struct device *dev;
> +       struct scmi_handle *handle;
> +       void *transport_info;
> +};

I would assume that with another transport, the 'payload' pointer would
not be __iomem

> +static int scmi_set_transport_ops(struct scmi_info *info)
> +{
> +       struct scmi_transport_ops *ops;
> +       struct device *dev = info->dev;
> +
> +       /* Only mailbox method supported for now */
> +       ops = scmi_mailbox_get_ops(dev);
> +       if (!ops) {
> +               dev_err(dev, "Transport protocol not found in %pOF\n",
> +                       dev->of_node);
> +               return -EINVAL;
> +       }
> +
> +       info->transport_ops = ops;
> +       return 0;
> +}

This looks odd: rather than guessing the transport type based on
random DT properties, I would prefer to have it determined by
the device compatible string, and have different drivers bind
to one of them each, with each driver linking against a common
base implementation, either as separate modules or in one file.

> +static int mailbox_chan_free(int id, void *p, void *data)
> +{
> +       struct scmi_chan_info *cinfo = p;
> +       struct scmi_mailbox *smbox = cinfo->transport_info;
> +
> +       if (!IS_ERR_OR_NULL(smbox->chan)) {
> +               mbox_free_channel(smbox->chan);
> +               cinfo->transport_info = NULL;
> +               smbox->chan = NULL;
> +               smbox->cinfo = NULL;
> +       }

There is something wrong if smbox->chan can be be one of
three things (a valid pointer, a NULL pointer, or an error value).

I see this is a preexisting problem, but please add a patch to
make it consistently use either NULL pointers or error codes
and remove all instances of IS_ERR_OR_NULL() from this
subsystem.

        Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
