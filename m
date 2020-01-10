Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66AF1137454
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 18:06:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tKiU4NjAZvg+xiHiJelgyaQzOGVzw7tPIyWfBuhYeSg=; b=iS4Ljtcqwm9xfW
	99rNg4E+NYNODM3+lh0F1UHBIV1r/DjZjgt6nPwssq/TAAoSj/eDsV9rRiwIS/RmKVij2d/ilh9oK
	IJsFvKAeTFaERrLZTjzQHnkdaWMqrTphU7yB2l8Ko6KALiKllM+N1Y4c8cCQLm4cMH1FZG2W/Kv5e
	iJfzi1Ik1x6DFcfrE3mksOFe7swc6c/XeqafvAgMqwccsdZJr1wId5+8xZV6KSsjejpAMXMk36eji
	PbrqpVOJ2hRwfJ+gw6a2+T92S21MqcEbYs46v2iLUAqBHiOBfIsL4Q4jvJcx8SxabQ4rhO1qYb5CW
	lrssVWIweh342v08+K0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipxja-0000XU-CL; Fri, 10 Jan 2020 17:06:06 +0000
Received: from mail-il1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipxjI-0000QM-Fj
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 17:05:51 +0000
Received: by mail-il1-x142.google.com with SMTP id f5so2314864ilq.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 Jan 2020 09:05:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=P79x9K14eJzNJIAEvO9N1GVK52JW7FS8fTo6U5mtEGI=;
 b=vuQ7Q5FLfnHpT+uAZM9i8bVxaYqaOYNcjTqL+mC+WFQLramWqV11SGCpGk4scxDXsl
 OOJNnIjvLL5pysvLKUQRyHHFPTzOupZVsfHjkq2Ppd7ljF8jBzZeiikoYZQoD6iW9FGw
 dosDs78LvoZwWFZecyzdgLgY6F6E9DlJjeab6+7u4kdApiSww6GMWawGTRMjqBw3RG3r
 NMaD4wDpT+c5fTjmLqdfqUgiVoSv1uQMo8aHGaq0N+pQB34MJ2iGtn2WKw8EZJVcSvk8
 Prh6ApJC3nRKKyqqfkf8OwOwXDyaVqIC8sN9oJyO+9Ieq8BJdgHf+aRGSDngm4z56iDf
 Smtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=P79x9K14eJzNJIAEvO9N1GVK52JW7FS8fTo6U5mtEGI=;
 b=bpJ9P8phn9cmGASzNj4EiJ68AFkk9dn8tKacKch1Y62ZJZV4Ct5zxMd8dBk9l9yODx
 Txzsii9BPKm59OTkxpuViqbDTmtpFmJcYArK/IVdOFq6xTOJOWJU3SbrLGvNlRp3NxEV
 zcqZyyIFu9CX4XxcGAgHqWDod7fdWOq5XIw7hil//FKKs1MyqA5lw7nkvpxtf5GffUXg
 ySh83ld+DJMh1imSnVUjhjtzZcsCV1gNe0F+SFfunwlCOpGTSMwp+igHywI8ccXfh+gJ
 fbyb9gKH5cOgRGbl0s1ljW/8OWXNmDQnWnYIdynx8HrO/BAcHc6BiJPSCHG0xa7itGFw
 ckcw==
X-Gm-Message-State: APjAAAUwIWwqI7UY2t44hGDr0FFzQlAdegyS2cVyJyDM2v5VSj+3pPSC
 FZdBWCNLqqPNjJ2y34A4O9bNDRhDYpEPxcGiMElHoQ==
X-Google-Smtp-Source: APXvYqxPmWQR2WBHSl0G0RqnbscifyfX9p3jXXDhLckarRBifM62npqEJAFZKBt+I42Cfqt9FdgR8x/w9JFpVyJNXvo=
X-Received: by 2002:a92:1711:: with SMTP id u17mr3529002ill.72.1578675946291; 
 Fri, 10 Jan 2020 09:05:46 -0800 (PST)
MIME-Version: 1.0
References: <20191120034451.30102-1-Zhiqiang.Hou@nxp.com>
 <CAOesGMjAQSfx1WZr6b1kNX=Exipj_f4X_f39Db7AxXr4xG4Tkg@mail.gmail.com>
 <DB8PR04MB6747DA8E1480DCF3EFF67C9284500@DB8PR04MB6747.eurprd04.prod.outlook.com>
 <20200110153347.GA29372@e121166-lin.cambridge.arm.com>
In-Reply-To: <20200110153347.GA29372@e121166-lin.cambridge.arm.com>
From: Olof Johansson <olof@lixom.net>
Date: Fri, 10 Jan 2020 09:05:35 -0800
Message-ID: <CAOesGMj9X1c7eJ4gX2QWXSNszPkRn68E4pkrSCxKMYJG7JHwsg@mail.gmail.com>
Subject: Re: [PATCHv9 00/12] PCI: Recode Mobiveil driver and add PCIe Gen4
 driver for NXP Layerscape SoCs
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_090548_609307_7F0C63D9 
X-CRM114-Status: GOOD (  10.29  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Xiaowei Bao <xiaowei.bao@nxp.com>,
 "m.karthikeyan@mobiveil.co.in" <m.karthikeyan@mobiveil.co.in>,
 "arnd@arndb.de" <arnd@arndb.de>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "Z.q. Hou" <zhiqiang.hou@nxp.com>,
 "l.subrahmanya@mobiveil.co.in" <l.subrahmanya@mobiveil.co.in>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, "M.h. Lian" <minghuan.lian@nxp.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, Mingkai Hu <mingkai.hu@nxp.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "bhelgaas@google.com" <bhelgaas@google.com>,
 "andrew.murray@arm.com" <andrew.murray@arm.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 10, 2020 at 7:33 AM Lorenzo Pieralisi
<lorenzo.pieralisi@arm.com> wrote:
>
> On Tue, Dec 17, 2019 at 02:50:15AM +0000, Z.q. Hou wrote:
> > Hi Lorenzo,
> >
> > The v9 patches have addressed the comments from Andrew, and it has
> > been dried about 1 month, can you help to apply them?
>
> We shall have a look beginning of next week, sorry for the delay
> in getting back to you.

Note that the patch set no longer applies since the refactorings
conflict with new development by others.

Zhiqiang, can you rebase and post a new version of the patch set?


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
