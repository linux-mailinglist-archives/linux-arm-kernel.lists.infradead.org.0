Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A061CF098
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 03:43:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qTGsYnadzrtfP4hBu+ijdIkp8LzSt1YxZwr/TSrOffU=; b=BSOjZq1G2gM5i9
	Skba5jOI6Q9nk9Q5KRRVy6Qnhnd3w3i0/5a0u0qyttXJOlrBmH50e/cYYw/aYGGba+sU2CyXnBTFM
	8dpZ1cvjI8UshCtuOz30IyBfU5Z7VsNygvxhWI6IqWoRMRox6wkui0QFkzAwMYQCN/iL4jKVaauUw
	PWWZNs2xuBxR3pgpTd9DM73ANend9OGbfpqTqwZFSbvncbHSUI9z1GB1PB8xAT+IpfuIyFOMzAQOb
	d1hpJdQi9nomrD79HSm1NAUYuf0HOicvzYgcssOhtQEzkKZkWMYK2TzXOa7COntudJtGgU/+B8YLp
	2q5qBqRyrG3tfWyhBDQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHeXO-0005cn-AK; Tue, 08 Oct 2019 01:43:42 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHeXH-0005cO-VS
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 01:43:37 +0000
Received: by mail-lf1-x141.google.com with SMTP id t8so10616458lfc.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 07 Oct 2019 18:43:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vAyTNFHXf10lpyOvysT1VF7d3x/O+fWSY3A10NGv1+g=;
 b=fhaQXeUXSNiSeZY5bpAmAFT0Z0rSkXSbIdGcJ3hGOrqWKRonP2jvNanO8N9gdQfsFT
 us5TFT4PUoNgxNGjSST0bRyPNEWOap1Dnnq9XiNI807181jfrE6dx1RtDZW2Drwlvv31
 GfQAmS/P2wFcd3ve4uWGSr8zvitnNwkD4ueN6WLtLt0bfB2Jsi2wuAkmFiRlltGmjsts
 qK88JQYLhbqw0RRh66/b4q3cReqprBMckimSmgv9RckZbTOeAiJweOKzNd+p1FXVstUh
 w3iyYnX1w0H8g9l6z5H1HL7BmyquUMOvxC3um1ZOQoH9DAGVfVZNSwdMzH48nUB7XW1J
 rs2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vAyTNFHXf10lpyOvysT1VF7d3x/O+fWSY3A10NGv1+g=;
 b=Hnp+Ha/5S9zYnKJffXaPUqJ5hECWW1yoU6IXC1Om6tUHQEaiF3KOaskV6FNxAGUsdC
 4Q7BixG9jHBcmTtWQuoOzNEuX3vkUSCWJKgUwhcH3HANAmHdcAwmxunSZXt5qiQT94hk
 +o4O041IGRbsVMIfQFRFXVX1BN7K3lR9PJzzdWBuLIkOd3SAn4pKTjVu68jxaJuKW/Ut
 6uulesgnk5GwF9LUD33KO/AjICCjbG1IngyAAta3OQv1YWgXmoQALjUTPKUX3ou8rfem
 XSVoMa7yDelp7KHvlyUbL2ZtSVlYa1z7cL1zTKTjyjmhU1gmsWY4r20648Z5JK94vjVW
 lZTg==
X-Gm-Message-State: APjAAAXImuaKq9qesr4d5VaLk2LgBMJj7wqAoBpgHJf8VTui6G1DfkFu
 AyIHanERX1OzQrc16exMuAtawn8EBhbuLpW3pBdraf9q
X-Google-Smtp-Source: APXvYqz9e9tCBlWunRh4SZKyuWL1gJxlFab/Iiq3JIRTRQVjWEaz3naMs0mijLfOl4pC0rTPCzaNKOtaOnS4jrq002s=
X-Received: by 2002:a19:f11c:: with SMTP id p28mr18140862lfh.44.1570499013898; 
 Mon, 07 Oct 2019 18:43:33 -0700 (PDT)
MIME-Version: 1.0
References: <1570497955-19481-1-git-send-email-Anson.Huang@nxp.com>
 <1570497955-19481-2-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1570497955-19481-2-git-send-email-Anson.Huang@nxp.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Mon, 7 Oct 2019 22:43:22 -0300
Message-ID: <CAOMZO5Ax+FTfWzkzqY6CH-1_5W8Gk6auEjKtCMEPq+=Ui6643Q@mail.gmail.com>
Subject: Re: [PATCH V2 2/3] arm64: dts: imx8mm-evk: Add i2c3 support
To: Anson Huang <Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_184336_014081_C4B80104 
X-CRM114-Status: UNSURE (   8.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Ping Bai <ping.bai@nxp.com>,
 Daniel Baluta <daniel.baluta@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <Linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Li Jun <jun.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Anson,

On Mon, Oct 7, 2019 at 10:28 PM Anson Huang <Anson.Huang@nxp.com> wrote:
>
> Enable i2c3 for i.MX8MM EVK board.
>
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

You could combine this patch with 3/3.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
