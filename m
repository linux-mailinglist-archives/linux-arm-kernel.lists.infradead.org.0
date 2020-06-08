Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86F851F171A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 13:00:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Silc74tlt77XBccZdF0aP5QdWgIqaUVuj7Z/HuvVWh8=; b=C/sQ4Eztg+KQBc
	g4n19SVIbHr6dSBhWL8n14QJwErPZU37TrKFLY7KUjP1g+oExm1NdB0Rb7YDfZuzWjJyudVVotTfT
	q3cyShQpB3KTi9jx4Qvsf9TbLt13c13kdPXqt7J4eB3BVPiDev39fwu59LgS5AWkfyl8+adIidbUn
	hcG6wpPdriEtKGfzj36QCqVHIvHeY87adMtM5ijyEkb7GxcS4vN+ksnkU8RsWfC5d9HWn8vZKHqCq
	b0bpKfMwuQMmfeYKVTwHkRXH9MBmUDgTfy0SGgVWndJSZIvn45MEtzQtN3hKbvZOwrsebYeqAzERF
	bwBoX8fIex+pAtzeuVOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiFVS-0008Cg-74; Mon, 08 Jun 2020 10:59:54 +0000
Received: from lb3-smtp-cloud9.xs4all.net ([194.109.24.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiFVK-0008CI-2w; Mon, 08 Jun 2020 10:59:47 +0000
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
 by smtp-cloud9.xs4all.net with ESMTPA
 id iFVEjQQDuCKzeiFVHjllru; Mon, 08 Jun 2020 12:59:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s1;
 t=1591613984; bh=dxy+5QKlOnH0VK/b78g2tiASoQgjUAvm558syn+Vdoo=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=TMKXfqY5lubf6ftrnJb4Pnd3+69N+8/hTaJvf8/6lZCR1qb+dlhThctIITzjs143m
 u2dbggpwCNGWeZ2S8xLYKKH3fil7O8tkd2qMBCuW9i+xye1jtyTqV1L4C+0kWc/REt
 +9vs+qJAMm3pooFycyJHNNPQghdSPFa9NUFGGvyHVAkGcEqc6qU1MnhM4MkBNadIGA
 oCvpoMvGJm1PDjiJkjbbb4RZHjv1Gsnug4BKW576N3xHupohbZXEfdrwg58o/1vD4f
 4gs0Rweir3Qv2s9rvXGprCLOOCvNt40FATk64AD4YbnKB7socZ68e0Xj/CRrwCxqyw
 UZkw9wBAZf/Ng==
Subject: Re: [PATCH RESEND v9 17/18] media: platform: Rename existing
 functions/defines/variables
To: Xia Jiang <xia.jiang@mediatek.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Rick Chang <rick.chang@mediatek.com>
References: <20200604090553.10861-1-xia.jiang@mediatek.com>
 <20200604090553.10861-19-xia.jiang@mediatek.com>
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Message-ID: <5c0998e6-7274-4c7c-a44b-5d69eb9261a9@xs4all.nl>
Date: Mon, 8 Jun 2020 12:59:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200604090553.10861-19-xia.jiang@mediatek.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfB2wYAxrK0PCVDN02JkkKDlBvpsHrZA5zFmfkkZNlVGgZ+78BPGKLcXMxwawtEIYgaLoawkpu0k8QkYsPkCxvH/Lt0ZETpSdTr7AE7621Qk87/WbPine
 jW4G1iMnKK+KpgxKoUNYRKTL/GPW/j2IgDzE0FfQ9FUDkeCu+6MMaTjMlTb9CYAgFs6FaEh82eLp7XqlUu448f6RR/T4wcWe8Gb6kthch5tKWOwGAT2zHGAp
 D8KuJcl/9KfOsz23JvTUhrbEl6NfFtjFFkN42can+ApnQLMoY0uu9g3FKCGTmXKSCXgVBkPnRPKWWOE+MG8Cwj6D2xWAGdUuUF1TzV1OLtDD+siwWiWebTyg
 Sr8dmvhgwlFsTc8U2ZujQxccu9yEf8E+CR1VMGZVcKm/Ag2gMdviFzkMyUK+jy8Epb3VVlBNOPkmCIyt+RQ5ElRuSLyz6hPQbxEVVgVaAS+4TkeKdySgIFDE
 wr+7rJX3pUuXZDTikmIfK021diKOZAHbVFuDzQ13xdJ8eI4rTUxZZBJvcZbc9i3Hpx+raMm+/U9C9op8ZW6GWaFPRV2zEXmEz0+1z5sUMTfJg+jD9Pn6IyS5
 j8aU15r0LXvxMawyLUfzzV4ltMEkjKqSKOjwovZfXR4Q7rSijIjerJoZbhkWEjVFB3FejfPvDghmonjfoPq5TQAUKgm3oWI/kiYizxbPG+55PwSl31LBxxqT
 sCUul3Pd7ggjoQiQ/MZcovcDLL4ptb5NRESAJAnq5UVu9m6HbySyzSrcv1yzBvTsNqMZJ19YxCx6gZXw92C9PqRnV9saE1cUFxsrDOYDWCI6u6zZVdTUDA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_035946_268496_27AD4053 
X-CRM114-Status: UNSURE (   7.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.30 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [194.109.24.30 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: maoguang.meng@mediatek.com, devicetree@vger.kernel.org,
 mojahsu@chromium.org, srv_heupstream@mediatek.com,
 linux-kernel@vger.kernel.org, Tomasz Figa <tfiga@chromium.org>,
 senozhatsky@chromium.org, sj.huang@mediatek.com, drinkcat@chromium.org,
 linux-mediatek@lists.infradead.org, linux-media@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04/06/2020 11:05, Xia Jiang wrote:
> Rename existing funcitons/defines/variables with a  _dec prefix and

Tiny typo: funcitons -> functions

> without dec_ prefix to prepare for the addition of the jpeg encoder
> feature.

Regards,

	Hans

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
