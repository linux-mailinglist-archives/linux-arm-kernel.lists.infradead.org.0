Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FC5310FD94
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 13:26:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HmaW8cAQ1FaxvWtY40PfK3/90c51whpBua55la1NdLk=; b=jMZrfwB0duDg0o
	Ff+88gZoMJiN4Izn15iWam8qlA7SuUSj0HeqdmGclFqiunRPKDHZkDvHxDM5BpEOi5fwIVt4TjAwO
	EEYllBxXOFaObKasV74YuykYPzJTOZzggYzVduLwhqWXoZtCNZvy7TCNHmjC3UVhoJk7DeJeXnPQg
	/yop0LIhSbPwSAoTZCRNWlzAT4XxoqS6zppK7TuKgtZ8m/uF4tUK2qL/xAaEt9VTbixMZroSCd0v2
	0GipgXpYsJ9ytwjtW4zqb48e5RS6nv/xB7LnXwJA9QC/emdF5Cm7BA775TTZ8ulcP1qHRKnmsYNSI
	rhxADwBZX5cZTpw6cnFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic7Ft-0006nY-Gf; Tue, 03 Dec 2019 12:26:13 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic7Fl-0006mj-TY
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 12:26:07 +0000
Received: by mail-qt1-x843.google.com with SMTP id g24so3473494qtq.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Dec 2019 04:26:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KCV6d9hCioXwDxQSc+9jtdCsRf9f3DSaaCIPQTYGbKY=;
 b=bpJPXACy569Uou4xeEkwZe9zGcFmIVFTruFj2RkHy7VtyGHrOoGRz3FqXS6kIL+sRo
 daMX5qEwAaWytvZEWpXQrsbW2BR8GJe0aPT3Cj7ggNoQNY3Dh2zJwsQVDGqIjqUv/hdQ
 v2w7Is0MN86M34UBMlqsoquVNzg/LUCns7zy7DYnvPW3vKggDzp9hAMv6pdFnZgEqcvf
 C4CXXVbJGvuwu7Bf8+AGrGMJmfi+XQ46PkOQY/Y8DnSF1xg5jRT4EnhFTXMHrLm63DYi
 Nr3L1gbqGsTXMpQbHcQsMQwZRuobk3Bz4Nzsvvx5aTaYSsezK7fEDiHD4k3YJUebl9YQ
 mqrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KCV6d9hCioXwDxQSc+9jtdCsRf9f3DSaaCIPQTYGbKY=;
 b=Ds5OnGxi8ff+L51LayMzPzOPuo9byjhbfXmwJKUDZeDAW+7KLHXHzqmDiuphHOzMSo
 JBxT/YlcR41MuL8mnOxPhcoifzrMVjNCktEMSruVlBCiyYIwTTvLTM2lwFZg21WtTbjO
 6HBuXxODA3wDI0Ih8y7pJuJmakAIjxEd7m7HFZT7w3PMK1KoSsHZhgkEPes0OxckwGL7
 1xQCcO2z/CadJnkQNYSWkeLb1Aki6SzXD8cxMKbsvUhb2yFi4q7ImeYHgFT2NmaVlpt3
 x7IJUVg/dR25WvaPSB+1gvidmGFfBeYDeB5Bp5lYO/q2q9ylo27q7yyvdLHyO+KVA6ln
 w42w==
X-Gm-Message-State: APjAAAVCkbYzpb19Yz87m32D3LV7MDIWtN0+xFH9F5V/85tLJcjr3jW9
 F47A78R44daqz+DJ/23F3L24TAvF2dtQm0vmTwKhVQ==
X-Google-Smtp-Source: APXvYqweLlybh/rT5gfnZhz0yyuec8Zuu65/mrhliV+x4arFaG745EaW3zCKngE6hVl+mIngkPeM29sDhed2WB7clT0=
X-Received: by 2002:ac8:1098:: with SMTP id a24mr4859094qtj.62.1575375964252; 
 Tue, 03 Dec 2019 04:26:04 -0800 (PST)
MIME-Version: 1.0
References: <20191119231912.12768-1-mike.leach@linaro.org>
 <20191119231912.12768-7-mike.leach@linaro.org>
 <b2f640d3-c320-82d4-7399-172846820589@arm.com>
 <CAJ9a7VgkgoUTL0+_3kj53go_CKtAH3fO5xF9UNDPPz1se1SKSw@mail.gmail.com>
 <ffda8aff-0904-7292-e2f1-93833b936c49@arm.com>
In-Reply-To: <ffda8aff-0904-7292-e2f1-93833b936c49@arm.com>
From: Mike Leach <mike.leach@linaro.org>
Date: Tue, 3 Dec 2019 12:25:52 +0000
Message-ID: <CAJ9a7VgH6tueHP_bCcwKzORbBxxADrRhUzPaSe=3NixCC05=Dw@mail.gmail.com>
Subject: Re: [PATCH v5 06/14] coresight: cti: Add device tree support for v8
 arch CTI
To: Suzuki Kuruppassery Poulose <suzuki.poulose@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_042605_964706_C707F9D2 
X-CRM114-Status: GOOD (  27.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Coresight ML <coresight@lists.linaro.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Suzuki,

On Tue, 3 Dec 2019 at 11:28, Suzuki Kuruppassery Poulose
<suzuki.poulose@arm.com> wrote:
>
> On 03/12/2019 10:59, Mike Leach wrote:
> > Hi Suzuki,
> >
> > On Fri, 29 Nov 2019 at 11:33, Suzuki Kuruppassery Poulose
> > <suzuki.poulose@arm.com> wrote:
> >>
> >> On 19/11/2019 23:19, Mike Leach wrote:
> >>> The v8 architecture defines the relationship between a PE, its optional ETM
> >>> and a CTI. Unlike non-architectural CTIs which are implementation defined,
> >>> this has a fixed set of connections which can therefore be represented as a
> >>> simple tag in the device tree.
> >>>
> >>> This patch defines the tags needed to create an entry for this PE/ETM/CTI
> >>> relationship, and provides functionality to implement the connection model
> >>> in the CTI driver.
> >>>
> >>> Signed-off-by: Mike Leach <mike.leach@linaro.org>
> >>> ---
>
>
> >>> +#ifdef CONFIG_OF
> >>> +/*
> >>> + * CTI can be bound to a CPU, or a system device.
> >>> + * CPU can be declared at the device top level or in a connections node
> >>> + * so need to check relative to node not device.
> >>> + */
> >>> +static int of_cti_get_cpu_at_node(const struct device_node *node)
> >>> +{
> >>> +     int cpu;
> >>> +     struct device_node *dn;
> >>> +
> >>> +     if (node == NULL)
> >>> +             return -1;
> >>> +
> >>> +     dn = of_parse_phandle(node, "cpu", 0);
> >>> +     /* CTI affinity defaults to no cpu */
> >>> +     if (!dn)
> >>> +             return -1;
> >>> +     cpu = of_cpu_node_to_id(dn);
> >>> +     of_node_put(dn);
> >>> +
> >>> +     /* No Affinity  if no cpu nodes are found */
> >>> +     return (cpu < 0) ? -1 : cpu;
> >>> +}
> >>> +
> >>> +static const char *of_cti_get_node_name(const struct device_node *node)
> >>> +{
> >>> +     if (node)
> >>> +             return node->full_name;
> >>> +     return "unknown";
> >>> +}
> >>> +#else
> >>> +static int of_cti_get_cpu_at_node(const struct device_node *node)
> >>> +{
> >>> +     return -1;
> >>> +}
> >>> +
> >>> +static const char *of_cti_get_node_name(const struct device_node *node)
> >>> +{
> >>> +     return "unknown";
> >>> +}
> >>> +#endif
> >>> +
> >>> +static int cti_plat_get_cpu_at_node(struct fwnode_handle *fwnode)
> >>> +{
> >>
> >> You may simply reuse coresight_get_cpu() below, instead of adding this
> >> duplicate set of functions. See below.
> >>
> >>
> >
> > No we can't. coresight_get_cpu gets the 'cpu' entry relative to the
> > device node, this gets the 'cpu' relative to the supplied node.
> > This is very important for the case where a none v8 architected PE is
> > attached to a CTI. This will use the devicetree form:-
> >
> > cti@<addr> {
> >      [ some stuff  ]
> >     trig_conns@1 {
> >            cpu = <&CPU0>
> >            [trigger signal  connection info for this cpu]
> >     }
> > }
> >
> > trig_conns is a child node and we must look for 'cpu' relative to it.
>
> Ok. May be we could refactor the function to find the 'CPU' node
> relative to the given "fwnode" and let the coresight_get_cpu() use it ?
>
> int coresight_get_cpu(struct device *dev)
> {
>         return coresight_get_fwnode_cpu(dev_fwnode(dev));
> }
>
> That way it is clear what we are dealing with. i.e, fwnode of any level
> (device or an intermediate node).
>

At present the generic coresight_get_cpu() deals with both DT and ACPI
bindings.
To refactor this would require re-factoring both binding types - and
at present we have no definition for ACPI bindings for CTI and hence
no way of knowing how the embedded cpu node is going to be
represented.

I think we have to take just the DT binding as is for now as a CTI
specific element and consider if it is worth re-factoring once the
ACPI bindings are defined

Regards

Mike

> >>> +     csdev = cti_get_assoc_csdev_by_fwnode(cs_fwnode);
> >>> +     if (csdev)
> >>> +             assoc_name = dev_name(&csdev->dev);
> >>
> >> Does it make sense to defer the probing until the ETM device  turn up ?
> >> Its fine either way.
> >>
> >
> > Not really as the ETM is optional but the PE still has a CTI.
>
> Ah, you're right. Please ignore my comment.
>
> Kind regards
> Suzuki



-- 
Mike Leach
Principal Engineer, ARM Ltd.
Manchester Design Centre. UK

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
