Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0990EF68E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 08:42:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xl7P/VBN1mVN/Tq4ldJ+4GbufB0XYk3ahKkN8PHByOY=; b=kMBIB8ZCwRdA/z
	29HQ0o9CFMZ17vnZGsS0mWrRkQFUfUr0c1SgJkw7KgCuDnoPAMHhv3IAOgKKAjRRd2BLLZjkOAwf6
	25vAHAinCisU3FqYSQ5B6v8PxH9Y/HqrucTxzqtxlKNePgTnts3W5R372YrX/agrT04aKKKCkCp3Q
	5MQjPNBEPAeLAhDACKCjRx3tJ2Jm/DeK6ESFEdukNXa+eUrEIosYXpvco1AF7/5uNXS/tpj7+fKHu
	VMnSKa0paRZKwQe/BmfEKI8eCcNF1DGGdQ3nYXA8anjdIgDHEeOKU/HQ9SsFEfrVDP1/OM6HORn/h
	7nnzReEOdI4WZpzA6yNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRtUA-0002p8-CQ; Tue, 05 Nov 2019 07:42:42 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRtU4-0002od-0e
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 07:42:37 +0000
Received: by mail-ed1-x541.google.com with SMTP id r16so555917edq.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 Nov 2019 23:42:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bq/oMc1w9CZddX2/C9nXQ3BMFHPgQLCdmRfeuuGrMCk=;
 b=dBAoHlIfAFubuAAkCQ1bOLzFinxVvIQv3YIsEA8WSu/W6D4AoT2tuQVVEsHCGIZbrs
 L7/dVxXRnZHC20Fjy6lhXs4P14zhLRHeNR+eDHhQtc22epbXPYPkEETJI1ubRAxcxsg3
 D3OArLLX68Wt7NZ7KTH/1rl1c7RttEOCrBfppGBS5sAkgelzbVa933Scmpp+h+pKP9/M
 4Qhhw6fW5xjDrYzBQtZ+NYhxo6hFz7JIE9Kt1uSyDt6zuxsWS8aOcWB2kRdemZ/GqijK
 GuIJt4n8PA49nr/V3XzIPmpXaAoWcvWOHqwPTmUVgDph2tBWFmY3d0in9KDo/jIKf/R2
 3fjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bq/oMc1w9CZddX2/C9nXQ3BMFHPgQLCdmRfeuuGrMCk=;
 b=CRlPA8BMOW7dIoFHDIGBn/LWALk6kvxY4TVdhC29/P8xZu5JKgE+7Q5geGi/3bHEgg
 Lh/wkXxq63N46FDT7P1mastL3MNyH/Uu3NpxEpap/sndljD9hOWi3fwsYwpsH0k39V/z
 qEbedEET4/mzaDlh2saD2ijQRWhDaaQuyulshPonH6a6ZgA/2Wc1IAe0Ao7Kq4JNDPIU
 195nGwGr0Wd1N/zXO9HI2TGqqGp0mh77aaOfWWOdgJeNxaWRWVNqXjXBTxVUiz4EWjJb
 wLxaSAYdtSQvnU4TNrBEiEcxy5RscYe25tVhEfEczff47EooMKZG4y4tl+BXRoE7SouE
 FaGw==
X-Gm-Message-State: APjAAAVzLtdylOB6PgGP6pxb8PgA5ut/L6s7mw+HvSXyfoU5Yo7YPvJG
 9yPMINNN5caTbUvBRN+7L6ndCiD3IwYfDxo1eSo=
X-Google-Smtp-Source: APXvYqxHxoo2BcLosgwrlvaNTgVtaxbho2YuMgoaxCXaCLIGhgwth9sUWzs89I66sMY4WMTPxx22c3XCPdwtZ1DX830=
X-Received: by 2002:a17:906:780e:: with SMTP id
 u14mr27332804ejm.97.1572939754050; 
 Mon, 04 Nov 2019 23:42:34 -0800 (PST)
MIME-Version: 1.0
References: <20190219012447.5900-1-sxauwsk@163.com>
In-Reply-To: <20190219012447.5900-1-sxauwsk@163.com>
From: Shubhrajyoti Datta <shubhrajyoti.datta@gmail.com>
Date: Tue, 5 Nov 2019 13:12:22 +0530
Message-ID: <CAKfKVtEwHcydp=+hNhG91h3qbMoYOPq7jEYjbuAVrWXT53DC3Q@mail.gmail.com>
Subject: Re: [PATCH v2] i2c: cadence: try reset when master receive
 arbitration lost
To: Shikai Wang <sxauwsk@163.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_234236_055910_E40016F5 
X-CRM114-Status: GOOD (  10.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (shubhrajyoti.datta[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Wolfram Sang <wsa@the-dreams.de>,
 Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Michal Simek <michal.simek@xilinx.com>, linux-i2c <linux-i2c@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Shikai,

On Tue, Feb 19, 2019 at 8:19 AM Shikai Wang <sxauwsk@163.com> wrote:
>
> When the adapter receive arbitration lost error interrupts,
> cdns_i2c_master_xfer return to the caller directly instead of resetting
> the adapter which resulted in the adapter being out of control.
>
> So when driver detect err_status such as arbitration lost,
> then try to repair and fix it.
>
I am missing the issue that you are facing.
You are having a multimaster scenario and getting arbitration lost.

the current code would attempt a retry did that lead to any issues?

Can you explain the issue that you are facing?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
