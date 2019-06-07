Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44CE338309
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 05:09:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xdYApf+cgQ8rWgMJijrmbNTU3i2DitbzE/6h4sOfAtk=; b=FDB/vmB8o9Q658
	I8GCRpfZPZNKSQEBKrvYc+nuh8mdPhHzWnWDIsMgpBv+QDdHIhPXEQhf9Y9y09CZuTLEJ8Eg+lHhB
	CTDI3e3xGQuEzSUmvVhB8r55qV/iNmzcxTYTnT9rS0fFGQiF1xXR94CgLYcTo45/ztSVwPXniVqIo
	sGL8ce+jCjezaJjhm1GTcl6LhDard7oG8xMjgktHXi5wLtSaExx7IFMqC0x+gDaybd3CAImOUgLN9
	a740Nv75kTKydZMYFME/UyMWjzjyrfJMecFchvvKbAku1EYIbtpvYa+OuOZuKYy552l5zTpRq1IPU
	ILFW/Pvm/JuvElxK8WZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZ5Fm-0001K5-BR; Fri, 07 Jun 2019 03:09:18 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZ5FZ-0001J7-Gt
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 03:09:06 +0000
Received: by mail-pl1-x644.google.com with SMTP id e5so230268pls.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Jun 2019 20:09:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=l+eyft39Sxn5qe5vMNB20kZPpijDjrsF0Bx6tS0M+aU=;
 b=jO3oZfMykEb2BKY03jwz+kXsoHKQu8zpBv3e9ZNS7BXIyYR/sEGVEFW9rSU68Zy1ot
 IX0rtILNEioETVtdCXdqCOjaXhQ6/V04I0kMZnyT9uAFkUnJlsbn/FwJrqnKB2Os2ksT
 R53jyDqUcEUCKxZhGJVubTxckdzTThcfvDdIz0S8HBVqukvgRLaV1siEQry2y5iZQAbl
 vKBALUpv+YBPbjHlLhxwTRYoMGVBCwfChg8Ho7hryobzfamryOk1Du0IIkzBOZY3dsTX
 JnQdwsgJ42i3qYhLFbv5re2YKfUGqR+mUm+ao0AZQrauGRw39/y/oWs7VXh57ppBrbIX
 Wb7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=l+eyft39Sxn5qe5vMNB20kZPpijDjrsF0Bx6tS0M+aU=;
 b=hh7iEI+m3HMVlMj1aQGs6hf4SP81WsZ+N3RAmsDdMuDKkGUBIur7+wy4JZFWihVVNb
 eVVtLoQ31TsMoOdiBA1+abiBbAzUjOc+JIDL9QI2nwpZYYjG/VXq+A1rqlFiEH0Y2qGd
 ng/RjGr/NoUVPNGIKIklhx8pm4TIUYQsOmhBa9XB8JSeVqHlal5CmkIk72zEzAAw46vz
 z+cmt0KAwrTSm2wvPhfdM2fHFO7XXlB4br/87dNjYoT7/ZwrRAUR40xTvNnwkYFnAjEK
 6pk3/C9NMh0tHUNfyyBh+tpieb0W+NaQOOiS+CKNECkT7VMWIdhdADjEylUWo7UMvMwM
 ijew==
X-Gm-Message-State: APjAAAX50/X30JTVognnj0S1c1ANSrBJrSj5Oc7IAykSzXTO60gPW0CS
 at64I8Wp4gx0lwLE7QbViWz00Q==
X-Google-Smtp-Source: APXvYqxSqWXpBXwjcMAABVRmHPcPaj26pGvwVZ6X1iptlArZMPbZRpUwdAHAy4afbL5j8QWqG+Rk4Q==
X-Received: by 2002:a17:902:15c5:: with SMTP id
 a5mr54260265plh.39.1559876944294; 
 Thu, 06 Jun 2019 20:09:04 -0700 (PDT)
Received: from localhost ([122.172.66.84])
 by smtp.gmail.com with ESMTPSA id e184sm537134pfa.169.2019.06.06.20.09.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 06 Jun 2019 20:09:03 -0700 (PDT)
Date: Fri, 7 Jun 2019 08:39:01 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v2 4/7] cpufreq: add driver for Raspbery Pi
Message-ID: <20190607030901.qdnjj7udw7ky3sfx@vireshk-i7>
References: <20190606142255.29454-1-nsaenzjulienne@suse.de>
 <20190606142255.29454-5-nsaenzjulienne@suse.de>
 <20190606170949.4A46720652@mail.kernel.org>
 <eb72a26b55cf17c29df6a7fd3c5def08182e00af.camel@suse.de>
 <20190606173609.2C3952083D@mail.kernel.org>
 <153579ddd7e6bd1e5c860a7a01115e47c78a1442.camel@suse.de>
 <20190606182335.1D15F20872@mail.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190606182335.1D15F20872@mail.kernel.org>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_200905_564858_83AD8F77 
X-CRM114-Status: UNSURE (   7.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: stefan.wahren@i2se.com, f.fainelli@gmail.com, ptesarik@suse.com,
 mturquette@baylibre.com, linux-pm@vger.kernel.org,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 mbrugger@suse.de, eric@anholt.net, bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, ssuloev@orpaltech.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 06-06-19, 11:23, Stephen Boyd wrote:
> Yes, thanks. I see that largely follows the commit description so it
> looks OK to me.

Do you want to provide your Reviewed/Acked-by tag before I apply it ?

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
