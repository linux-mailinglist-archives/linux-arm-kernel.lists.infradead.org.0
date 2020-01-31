Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EDDE14E7E7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 Jan 2020 05:33:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xDk7HZFZdcmJyI0VlRDTfJz3gVDPjMxGrOUmiYdy6M8=; b=JOgh2cvYCHcJ4o
	IbPZWd9aJHNgkqHKw3+eMIn9kFlbqrlm+JNNZVlCCpmjgP27e4fhLc418F4H+ms9eplCc/aj/41dC
	8dcfaaF9mR6hk2Ro99BdIDVih9nJC1twIsFHFKSqmLvV3/N3m19tn5bsBaiIgudH0Sp8voFtELjNs
	l9olBEGlYCpOH8ffIgscgDprymyftOZyt4RktKqtfKH6ug7EH1ZfLSdkSBltqe6+ro/vKBk3oITV6
	6Gdjg16nyCjo9ga12VazhcBLRl/sGO8GW2i9X7Av6PjsJeqNLxbSkgPUsUQsUnWzHjI40lhcR9A/0
	2IdkwO+Mny5WWbdfBJkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixNzd-0005oX-Pw; Fri, 31 Jan 2020 04:33:21 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixNzU-0005o3-Uy
 for linux-arm-kernel@lists.infradead.org; Fri, 31 Jan 2020 04:33:14 +0000
Received: by mail-pf1-x443.google.com with SMTP id 84so2648772pfy.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Jan 2020 20:33:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=5YBPz1R1Tq8ogjk4q4yHg3F3OHJSAN1Ceopqmh7+8Ms=;
 b=YAnnKWp5jcufgnbgPcv7AKk75oBjxglaEg8N0nURW7KbIivjyueLQAlm+afiAEsTht
 caqFkHkcyvRXrfBNPprCTG+99uObZzuJBYBbTgFmc4sJrU/pSxgqtzEE14G82M9gK571
 aAzjd1LChFuhfpOBh/eJSX3ICmG9xLLGjb924fwTPG+O8qzY6s/NrZ8tDPYQsSzpGOWE
 +LZy5oJGpqYPGfyrxxSxkQtVFY+EwLgAhswTruf1iUqO2eOwt0bveKVSEhILIGyA1iil
 RYRSvuaqA+HZVgtyxbVZPZ5PlE3wNr+AFrw57j1fystiU4DG+cP6lpqeeWnd3lV6QPo3
 CYSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=5YBPz1R1Tq8ogjk4q4yHg3F3OHJSAN1Ceopqmh7+8Ms=;
 b=kdclxo8lpBej8/BUb3lcLqbfLA+GnHASGuwxrJVs//pafrzywtV0EJgPi6ZSe33uuP
 BX9o9/Z1u8Q/2yLla+3DOms9eeK2XzZ3hCc35Z9tY01WMr+nj9/ZdCQnCCaVVupWqOuT
 ulthMd3QIqIObBUBO2zJ8deEl0kr7xVUM7/CVAT2IlA6yFZENX220cNZwUvjOX9uAy7g
 nTRaOPpQc660KmA9MN+YSv2dbfZ6YExeu6a+KyCzoTFzq+SpsiKik/OhDAXNj2BNz6qx
 BPY0oEHDqblC66cfFOxLalPmA0H+PeTgUacbiSYV+FMa5jBJvi7VQYmLP1gm5eMVPsr0
 pPBQ==
X-Gm-Message-State: APjAAAUW1q0c66gL0orAg301e111ecuAc92L5f+01Ipr4BK3d4qsVzVP
 ryz1jqNFja0EMU3TZpgMTa2OCg==
X-Google-Smtp-Source: APXvYqwEN17hrZK69xPBYl4VAlSoCipA5jd/df38BHlKebya8QekoVxPecktD08Jwc9BQOd4P5p+ag==
X-Received: by 2002:a62:e30f:: with SMTP id g15mr8470354pfh.124.1580445191433; 
 Thu, 30 Jan 2020 20:33:11 -0800 (PST)
Received: from localhost ([122.172.141.204])
 by smtp.gmail.com with ESMTPSA id w18sm3860635pfq.167.2020.01.30.20.33.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 30 Jan 2020 20:33:10 -0800 (PST)
Date: Fri, 31 Jan 2020 10:03:08 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Peter Hilber <peter.hilber@opensynergy.com>
Subject: Re: [PATCH V5] firmware: arm_scmi: Make scmi core independent of the
 transport type
Message-ID: <20200131043308.gxcekh2tioydurq7@vireshk-i7>
References: <f170b33989b426ac095952634fcd1bf45b86a7a3.1580208329.git.viresh.kumar@linaro.org>
 <20200128173524.GB36496@bogus>
 <b970542b-0c05-5401-46be-5f585bdafb09@opensynergy.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b970542b-0c05-5401-46be-5f585bdafb09@opensynergy.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_203313_053668_00F31068 
X-CRM114-Status: UNSURE (   8.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [122.172.141.204 listed in dnsbl.sorbs.net]
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
Cc: peng.fan@nxp.com, arnd@arndb.de, jassisinghbrar@gmail.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Sudeep Holla <sudeep.holla@arm.com>, cristian.marussi@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 30-01-20, 12:58, Peter Hilber wrote:
> Maybe the mark_txdone, fetch_response, and poll_done ops should also get
> a `u32 msg_hdr' parameter? I thought it could be required in case of
> concurrent xfers, or maybe I don't understand the imposed concurrency
> limitations properly.

I would like to avoid doing that unless we have some upstreamed
transport which is going to need it. The parameter won't be used by
mailbox.c for now and so better add it later only.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
