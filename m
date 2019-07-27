Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D8DF7794C
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 27 Jul 2019 16:31:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i2lVN5ptTMUpJOfBKWM1HqtMD61MAU+wL3JzQROeXIo=; b=PGndJHfjFYU2qW
	V/sEo3vDqloyDn5JcBzGwlSl4WQlGawuwAkgHbuYvTHFByOKRxjQqCmnJg1K4NCN0L4J4LfVlUbSy
	slS/w6+QYy1N4OioK/543L4hCmK8v0PScpjDQWRE6bh8gwqUO/7BuN9tXGIDpIKE/VT6ILVZFbrKD
	2flUAtzf48cQO24rmN23mgJOroeDr4WP3lLCzkUUwXxx3LF89hHDwa/kwwSpw145ygjuBIwvw692Q
	EvuaxocqmwlIZA2JlrbPH0Gs9c9bdR27WAV2bZZoZnyzS48MJ1D6n3HsY1CCDVzxMgkX9abgy321w
	vOyTpqTdn5TrrjL4u+RA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrNj0-00022a-NI; Sat, 27 Jul 2019 14:31:06 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrNim-00022G-Oh
 for linux-arm-kernel@lists.infradead.org; Sat, 27 Jul 2019 14:30:53 +0000
Received: by mail-lf1-x143.google.com with SMTP id h28so38994419lfj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 27 Jul 2019 07:30:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Wv1yLIt8dyUH9BThIfQWfGHvzo6b2SQHOoH8T3cW6qg=;
 b=HU22+crbqQCvc6CPEy5y1z7SVkNPS/QEvJ51JimvDWp//wOJiEM3zWPyqjNL3wS06Y
 fVbQrEuRmpVr+j8PEhI1yqgP37EyXPkm3xYurGfhzYeHaGNZw++ukOxrwuyRwsUszXP+
 jRrk2KaPx5y0x+FXCyY93DHzSJKs96IzdsmPQ2znhsZwbgi0PANwuhaPvqNOpENejlH+
 /Cz4qdEA+n5sxseRCqHAQ7qF0qPscBas7zfOqRZ2iIEIhQNJrMW/F4VAn06whl9nyWod
 yDBdBHPoUDsn8CeUroBpQH5bh9RVV5Folr5W06bU5JylOFdS0DHW5W52DTRT7oK0eEQL
 zmrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Wv1yLIt8dyUH9BThIfQWfGHvzo6b2SQHOoH8T3cW6qg=;
 b=KlzQPijK6gNGU2/r98cQe7PrIhDSO5g4bC3HHLfePPBSVtwUnCV3+VoHS2LZT5s+Cb
 n33pAgUc/CS8tD7LH1vXeUvCmOqbQ4Q9M1b6N0hjFmoDDg24pzVSuXQfHWnMiZun+raN
 fD8Xh1sJQqDbhJ5s0ao9qgvynWH8NeA4dsMAQt8SleOMrXNVazVdJqR1wRnfDi6HWxeg
 0ZVHQLG3m+v0Bj4D9FVZ+J2qb6oyJfP3yQ8ijqNGdjPQbq6GsnnhfOuPdbJU6UqSNIwp
 MZyUo3tfuw+GieKNfUPFtzsAk2cvP4NcdW8ZLv9Bv0x5HENEPo8VO49IOGuvjwT2u29c
 quvw==
X-Gm-Message-State: APjAAAXGFPZeKepyf9RDg13bYYUHM5B1KM7+kLzJDhQMpd+f4AJDjzmm
 adrlErXcBMn7nosjVEo89L7PZUd+gKBnZLEBs6g=
X-Google-Smtp-Source: APXvYqzYz0/B0l1VoUh0y8S3xTIl3qB04gaGoqLIzQpM/BhZYYpP4jZDP9b0wf97pRFVTUmhqAl80aYJE+WkKg576I0=
X-Received: by 2002:a05:6512:21e:: with SMTP id
 a30mr27577350lfo.107.1564237850846; 
 Sat, 27 Jul 2019 07:30:50 -0700 (PDT)
MIME-Version: 1.0
References: <20190727142640.23014-1-krzk@kernel.org>
In-Reply-To: <20190727142640.23014-1-krzk@kernel.org>
From: Fabio Estevam <festevam@gmail.com>
Date: Sat, 27 Jul 2019 11:30:52 -0300
Message-ID: <CAOMZO5BWdDZSitFTWOOR1dPK6TKAwZLZ_U5YWuCOqcPVRL8yWQ@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: imx: Cleanup style around assignment operator
To: Krzysztof Kozlowski <krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190727_073052_830199_D241D163 
X-CRM114-Status: UNSURE (   7.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Krzysztof,

On Sat, Jul 27, 2019 at 11:26 AM Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> Use a space before and after assignment operator to have consistent
> style.
>
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

Thanks for doing this cleanup:

Reviewed-by: Fabio Estevam <festevam@gmail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
