Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EE61F09C1
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 23:46:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=plmCJWGNd2ef+OjZoSyY72rMYWshn0vjUIMHaArZEqQ=; b=GDTphMJLvbidNB
	sz6rUpltH1BI1+pL7sC37QbP52I43Mm5BZnaNGIyUVx+mJbdPIh1p2i8XuPgZy7YFsBS70tHGvuy2
	I3/sjDsUWDpZ9xTsjuzeIK/xWpAo6J0C7CcUWFqtcvqtkN6BdzWHURwgWSiOMudOhw3BRvaJtAgIh
	1INpVlRqWaUft34IWgA9SC6kEzYrK3GdTbRADK9ZmITrDgpi608KzMlvz6D3aYLfVcbNaOX16b+jE
	ZjFo6cbljcz7B0L9SOcJASvlorTkBuAlkiwfJtnNOHl9Se19GpAK6pMUkbRYYJA3TtrdDXkscOTuV
	D3Ax8zm1XCAeDWmthETQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS7ag-0005zk-OS; Tue, 05 Nov 2019 22:46:22 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS7aY-0005yf-6a
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 22:46:15 +0000
Received: by mail-wm1-x342.google.com with SMTP id 8so1204467wmo.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 14:46:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=7xwWVXiuG1tLPN6CPka9ylUlJIP2hCJ9RzlJKfzF5/I=;
 b=G5KV+1mriyllS9vliRA/FB2eSB8+Y1pVuDH+yOGI9/dlU6p4f0CEBcf1v3g2sqUVJJ
 2ZuBQ9rKXI0+Unyi+pLfp6ghnwr3XOeicCMuKJ0jFCjXXJlMRdxRxf3s3fKZcJdPdWWN
 oeQTWKOv+Pi/dicJidS5o5yDQuS2gidH2b8t8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=7xwWVXiuG1tLPN6CPka9ylUlJIP2hCJ9RzlJKfzF5/I=;
 b=bQXWB8bJuKEmjRy9mYX5CSypJKMOMMxiG7luM25mA3WAhSmMV7k4G9bq0NWq4O/nnB
 bqsjwrfLCDEfUkGPFeUrQ1Xx3c9z/7vbk/8gQca0DKtIyOaby+12ZNO/DV86OhWWjOKZ
 OSVMNQY9u3zk7QvsC7WBOB8dqE7vlRpUfyr8BcxhX+yt+012Wd2fDPm9TFlaAr06Zsl6
 MWi3tzxHBRHqdYtljM8kvnJBnlALWMJ2tFcu5uIQoXGqhGxRPyNAfEDdhsKKTrhx3thD
 feC0dvdJ3G1ewPL3QaCGdl8ZuaxfW8bt8Y6Z6LlrULar/1VS9kul4fMESEZTyjjG886i
 YEpQ==
X-Gm-Message-State: APjAAAWuuc7hEmE5sveh3mSXC/WjTxukPt18o0trjsywniWJwX50NJ/V
 k+W3y80MCRytLrjncmbnmg8U7g==
X-Google-Smtp-Source: APXvYqyILKyWyx8z/N+HI9ObpIe8L/xuTBO+aWfJYAW3owIrX4/P2lrMpGLQn5+ocDXByWt/4qGYzg==
X-Received: by 2002:a7b:c7c7:: with SMTP id z7mr1055811wmk.85.1572993971089;
 Tue, 05 Nov 2019 14:46:11 -0800 (PST)
Received: from [192.168.1.149] (ip-5-186-115-54.cgn.fibianet.dk.
 [5.186.115.54])
 by smtp.gmail.com with ESMTPSA id i3sm22220902wrw.69.2019.11.05.14.46.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 05 Nov 2019 14:46:10 -0800 (PST)
Subject: Re: [PATCH v3 35/36] net/wan: make FSL_UCC_HDLC explicitly depend on
 PPC32
To: Li Yang <leoyang.li@nxp.com>
References: <20191018125234.21825-1-linux@rasmusvillemoes.dk>
 <20191101124210.14510-1-linux@rasmusvillemoes.dk>
 <20191101124210.14510-36-linux@rasmusvillemoes.dk>
 <4e2ac670-2bf4-fb47-2130-c0120bcf0111@c-s.fr>
 <VE1PR04MB6687D4620E32176BDC120DBA8F620@VE1PR04MB6687.eurprd04.prod.outlook.com>
 <24ea27b6-adea-cc74-f480-b68de163f531@rasmusvillemoes.dk>
 <CADRPPNQ4dq1pnvNU71vNEgk1V5ovrT9O2=UMJxG45=ZSRdJ4ig@mail.gmail.com>
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Message-ID: <f48df0c7-77f1-268f-8588-7eff5e9fd7c5@rasmusvillemoes.dk>
Date: Tue, 5 Nov 2019 23:46:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CADRPPNQ4dq1pnvNU71vNEgk1V5ovrT9O2=UMJxG45=ZSRdJ4ig@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_144614_240523_CD9F8892 
X-CRM114-Status: GOOD (  18.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Christophe Leroy <christophe.leroy@c-s.fr>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Scott Wood <oss@buserror.net>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Qiang Zhao <qiang.zhao@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04/11/2019 21.56, Li Yang wrote:

>> No, this patch cannot be dropped. Please see the kbuild complaints for
>> v2,23/23 about use of IS_ERR_VALUE on not-sizeof(long) entities. I see
>> kbuild has complained about the same thing for v3 since apparently the
>> same thing appears in ucc_slow.c. So I'll fix that.
> 
> When I made this comment I didn't notice you have removed all the
> architectural dependencies for CONFIG_QUICC_ENGINE.  If the
> QUICC_ENGINE is only buidable on powerpc, arm and arm64, this change
> will not be needed.
> 
> BTW, I'm not sure if it is a good idea to make it selectable on these
> unrelavent architectures.  Real architectural dependencies and
> COMPILE_TEST dependency will be better if we really want to test the
> buildability on other platforms.

Well, making QUICC_ENGINE depend on PPC32 || ARM would certainly make
things easier for me. Once you include ARM64 or any other 64 bit
architecture the buildbot complaints start rolling in from the
IS_ERR_VALUEs. And ARM64 should be supported as well, so there really
isn't much difference between dropping all arch restrictions and listing
the relevant archs in the Kconfig dependencies.

Rasmus



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
